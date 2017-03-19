﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using Newtonsoft.Json;
using Data;
using Command;
using System.Reflection;

namespace TCPDatabase
{
    public class TCPServer
    {
        public int ClientsConnected = 0;
        public Socket sock { get; set; }
        private IPEndPoint localIP { get; set; }
        private Thread Tasker { get; set; }
        private Database db { get; set; }

        public TCPServer(int port)
        {
            sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            localIP = new IPEndPoint(GetLocalIP(), port);
            Tasker = new Thread(AcceptBackground);
            db = new Database();
            sock.Bind(localIP);
            sock.Listen(10);
            Console.WriteLine("Server started at " + localIP.ToString());
            StartAccepting();
        }

        public void StartAccepting()
        {
            Tasker = new Thread(AcceptBackground);
            Tasker.Start();
        }

        public void EndAccepting()
        {
            Tasker.Abort();
        }

        public void AcceptBackground()
        {
            while (true)
            {
                Socket handler = sock.Accept();
                Console.WriteLine("Client " + handler.RemoteEndPoint.ToString() + " connected.");
                RunBackground(handler);
            }
        }

        public void RunBackground(Socket handler)
        {
            Thread newThread = new Thread(HandleClient);
            newThread.Start(handler);
            ClientsConnected++;
        }

        public void HandleClient(Object obj)
        {
            Socket handler = (Socket)obj;
            while (true)
            {
                try
                {
                    byte[] bytes = new byte[1024];
                    var response = new Response();

                    int BytesReceived = handler.Receive(bytes, bytes.Length, 0);
                    string data = Encoding.UTF8.GetString(bytes, 0, BytesReceived);

                    try
                    {
                        ICommand cmd = JsonConvert.DeserializeObject<ICommand>(data, new JsonSerializerSettings
                        {
                            TypeNameHandling = TypeNameHandling.All
                        });


                        string TypeMethod = cmd.GetType().ToString().Split('.')[1];
                        Console.WriteLine(TypeMethod);
                        MethodInfo method = db.GetType().GetMethod(TypeMethod);
                        response.value = method.Invoke(db, cmd.array);

                        string json = JsonConvert.SerializeObject(response, new JsonSerializerSettings
                        {
                            TypeNameHandling = TypeNameHandling.All,
                            Formatting = Formatting.Indented
                        });

                        handler.Send(Encoding.UTF8.GetBytes(json));
                    }
                    catch (Exception)
                    {
                        response.value = "error";
                        Console.WriteLine(response.value);

                        string json = JsonConvert.SerializeObject(response, new JsonSerializerSettings
                        {
                            TypeNameHandling = TypeNameHandling.All,
                            Formatting = Formatting.Indented
                        });
                        handler.Send(Encoding.UTF8.GetBytes(json));
                    }
                }
                catch (Exception)
                {
                    Console.WriteLine("Client " + handler.RemoteEndPoint.ToString() + " disconnected.");
                    break;
                }
            }
        }

        public void Send(string Message)
        {
            if (sock.Connected)
                sock.Send(Encoding.UTF8.GetBytes(Message));
        }

        public IPAddress GetIP()
        {
            return localIP.Address;
        }

        private IPAddress GetLocalIP()
        {
            IPHostEntry host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (var ip in host.AddressList)
            {
                if (ip.AddressFamily == AddressFamily.InterNetwork)
                {
                    return ip;
                }
            }
            throw new Exception("Local IP Address Not Found!");
        }
    }
}
