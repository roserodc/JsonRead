using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;
namespace JSON
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        //protected void btnJson_Click(object sender, EventArgs e)
        //{
        //    File.WriteAllText(@"C:\json\aspnetJSON.json","["+Session["ARCHIVOJSON"].ToString().ToString()+ "]");
        //    Response.Write("<script>alert('json listo');</script>");

        //}

        protected void btnAgregarCli_Click(object sender, EventArgs e)
        {
            Persona persona = new Persona
            {
                RazonSocial = txtRazonSocial.Text,
                FechaEmision = txtFechaEmision.Text,
                Identificacion = txtIdentificacion.Text,
                email = txtEmail.Text
            };
            txtRazonSocial.Text = "";
            txtFechaEmision.Text = "";
            txtIdentificacion.Text = "";
            txtEmail.Text = "";

            if (Session["ARCHIVOJSON"].ToString() == string.Empty)
                Session["ARCHIVOJSON"] = JsonConvert.SerializeObject(persona);
            else
                Session["ARCHIVOJSON"] = Session["ARCHIVOJSON"].ToString() + "," + JsonConvert.SerializeObject(persona);

            ltbCliente.Items.Add("Razon Social: " + persona.RazonSocial +
                                "Fecha Emision: " + persona.FechaEmision +
                                "Identificacion: " + persona.Identificacion +
                                "Email: " + persona.email);
        }

        protected void btnAgregarFact_Click(object sender, EventArgs e)
        {
            Factura factura = new Factura
            {
                NroFactura = Convert.ToInt32(txtNroFactura.Text),
                Subtotal = Convert.ToInt32(txtNroFactura.Text),
                IVA = Convert.ToInt32(txtNroFactura.Text),
                Total = Convert.ToInt32(txtNroFactura.Text),
                FormaPago =txtFormaPago.Text
            };
            txtNroFactura.Text = "";
            txtSubtotal.Text = "";
            txtIVA.Text = "";
            txtTotal.Text = "";
            txtFormaPago.Text = "";

            if (Session["ARCHIVOJSON"].ToString() == string.Empty)
                Session["ARCHIVOJSON"] = JsonConvert.SerializeObject(factura);
            else
                Session["ARCHIVOJSON"] = Session["ARCHIVOJSON"].ToString() + "," + JsonConvert.SerializeObject(persona);

            ltbCliente.Items.Add("NroFactura: " + factura.NroFactura +
                                " Subtotal: " + factura.Subtotal +
                                "IVA: " + factura.IVA +
                                "Total: " + factura.Total+
                                "FormaPago: " + factura.FormaPago);
        }

        protected void btnCliente_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\json\JsonClientes.json", "[" + Session["ARCHIVOJSON"].ToString().ToString() + "]");
            Response.Write("<script>alert('json listo');</script>");
        }

        protected void btnFactura_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\json\JsonFacturas.json", "[" + Session["ARCHIVOJSON"].ToString().ToString() + "]");
            Response.Write("<script>alert('json listo');</script>");
        }
    }
}