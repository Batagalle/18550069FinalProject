using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Travel_Agency
{
    public partial class lockscreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            

            if (TextBox1.Text == "admin")
            {
                Response.Redirect("adminNew.aspx?user=admin");
            }
           
        }
    }
}