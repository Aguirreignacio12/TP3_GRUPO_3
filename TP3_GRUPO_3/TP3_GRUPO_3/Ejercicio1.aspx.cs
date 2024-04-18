using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_3
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            foreach (ListItem item in DDLLocalidades.Items)
            {
                if (TextBoxLocalidad.Text.ToUpper() == item.Text.ToUpper())
                {
                    args.IsValid = false;
                }
            }
        }

        protected void BtnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            if (RfvLocalidad.IsValid == true && RevLocalidad.IsValid == true && CvLocalidad.IsValid == true)
            {
                DDLLocalidades.Items.Add(TextBoxLocalidad.Text);
                TextBoxLocalidad.Text = string.Empty;
            }
        }

        protected void BtnGuardarUsuario_Click(object sender, EventArgs e)
        {
            

        }
    }
}