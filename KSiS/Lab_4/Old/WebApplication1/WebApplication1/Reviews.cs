//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reviews
    {
        public int Id { get; set; }
        public string Content { get; set; }
        public Nullable<int> Post_Id { get; set; }
        public Nullable<int> User_Id { get; set; }
    
        public virtual Posts Posts { get; set; }
        public virtual Users Users { get; set; }
    }
}