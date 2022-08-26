using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PA1_Grupo1_Ej2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void limpiarCampos()
        {
            txtEmail.Text = String.Empty; ;
            txtPassword.Text = String.Empty; 
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            var email = "drosado1901@gmail.com";
            var password = "1234567890";
            var correo = txtEmail.Text;
            var contrasena = txtPassword.Text;

            if (String.IsNullOrEmpty(correo) || String.IsNullOrEmpty(contrasena))
            {
                labelObligatorios.Visible = true;
                labelDanger.Visible = false;
                labelSuccess.Visible = false;
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Todos los campos son obligatorios')", true);
            } else
            {
                if (correo == email && contrasena == password)
                {
                    labelDanger.Visible = false;
                    labelSuccess.Visible = true;
                    labelObligatorios.Visible = false;
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Validación correcta')", true);
                    limpiarCampos();
                }
                else
                {
                    labelDanger.Visible = true;
                    labelSuccess.Visible = false;
                    labelObligatorios.Visible = false;
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Validación incorrecta')", true);
                }
            }
        }
    }
}