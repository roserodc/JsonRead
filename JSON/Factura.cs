using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JSON
{
    public class Factura
    {
        public int NroFactura { get; set; }
        public int Subtotal { get; set; }
        public int IVA { get; set; }
        public int Total { get; set; }
        public string FormaPago { get; set; }
    }
}