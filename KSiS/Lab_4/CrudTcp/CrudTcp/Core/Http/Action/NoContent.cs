﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrudTcp.Core.Http.Action
{
    public class NoContent : IHttpAction
    {
        public int Code { get; set; }
        public object Object { get; set; }

        public NoContent()
        {
            Code = 204;
            Object = null;
        }
    }
}
