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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Persona persona = new Persona
            {
                nombre = txtNombre.Text,
                edad = Convert.ToInt32(txtEdad.Text),
                email = txtEmail.Text
            };
            txtNombre.Text="";
            txtEdad.Text = "";
            txtEmail.Text = "";

            if (Session["ARCHIVOJSON"].ToString() == string.Empty)
                Session["ARCHIVOJSON"] = JsonConvert.SerializeObject(persona);
            else
                Session["ARCHIVOJSON"] = Session["ARCHIVOJSON"].ToString() + ","+JsonConvert.SerializeObject(persona);

            ltbPersona.Items.Add("Nombre" + persona.nombre +
                                "edad" + persona.edad +
                                "email" + persona.email);

        }

        protected void btnJson_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\json\aspnetJSON.json","["+Session["ARCHIVOJSON"].ToString().ToString()+ "]");
            Response.Write("<script>alert('json listo');</script>");

        }
    }
}