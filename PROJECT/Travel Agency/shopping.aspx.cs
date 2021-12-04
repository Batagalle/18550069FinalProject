
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

using System.Web.Security;

namespace Travel_Agency
{
    public partial class shopping : System.Web.UI.Page
    {
       
        public string uname;
        
        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;
        
        private Controller.DBCon dbcon = new Controller.DBCon();

        protected void Page_Init(object sender, EventArgs e)
        {
            string q1 = "SELECT place as 'Place',description as 'Description',address as 'Address',url as 'URL' FROM shopping";
                        
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;
            
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            con = new MySqlConnection(constring);
            con.Open();
            da = new MySqlDataAdapter(q1, con);
            da.Fill(ds);
            
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            dropdownMenu1.Visible = false;
            
            uname = Request["user"];            
            Label2.Text = uname;
            
            if (uname == "")
            {

            }
            else if (uname != "")
            {
                if (Page.User.Identity.IsAuthenticated)
                {

                }
                else
                    FormsAuthentication.RedirectToLoginPage();
            }


            if (Label2.Text != "")
            {
                Label2.Visible = true;
                dropdownMenu1.Visible = true;
            }            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[4].Visible = false;

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {               
                if (e.Row.RowType == DataControlRowType.DataRow)
                {              
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#FFB84D'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }   
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
            Response.Redirect("index.aspx?user="+uname);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                string selectedValue = Request.Form["MyRadioButton"];
         
                Response.Redirect(selectedValue);
            }
            catch (Exception ex)
            {
                Label1.Text = "Please select a Relevant Radio Button that You Want to Visit";
                Label1.Visible = true;
            }
                        
        }
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx?user=" + uname);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("about.aspx?user=" + uname);
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("services.aspx?user=" + uname);
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("tours.aspx?user=" + uname);
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("gallery.aspx?user=" + uname);
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx?user=" + uname);
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("account.aspx?user=" + uname);
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("testimonials.aspx?user=" + uname);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}