//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace demo_xedap.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tOrder_detall
    {
        public string OrderID { get; set; }
        public string ProductID { get; set; }
        public Nullable<double> Prices { get; set; }
    
        public virtual tOrder tOrder { get; set; }
        public virtual tProduct tProduct { get; set; }
    }
}
