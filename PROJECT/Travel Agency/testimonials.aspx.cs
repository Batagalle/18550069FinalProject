using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

using System.Web.Security;

namespace Travel_Agency
{
    public partial class testimonials : System.Web.UI.Page
    {

         public string uname;

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;       
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;
        public MySqlDataReader dr1 = null;


        private Controller.DBCon dbcon = new Controller.DBCon();

        protected void Page_Init(object sender, EventArgs e)
        {          
           string count="";

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q1 = "SELECT COUNT(fdbk) AS 'Count' FROM feedback";

            com = new MySqlCommand(q1, con);

            dr = com.ExecuteReader();
            while (dr.Read())
            {
                count = dr[0].ToString();
            }

            con.Close();

            int count1 = Convert.ToInt32(count);
            
           
            for (int i = 0; i < count1; i++)
            {
           
                string q2 = "SELECT * FROM feedback";

                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                
                con.Open();
                da = new MySqlDataAdapter(q2, con);
                da.Fill(ds);


                GridView1.DataSource = ds;
                GridView1.DataBind();

                con.Close();

                int r =  i%2;

                if (r == 1)
                {
                    TextBox txt = new TextBox();
                    txt.ReadOnly = true;
                    txt.TextMode = TextBoxMode.MultiLine;
                    txt.Columns = 60;
                    txt.Height = 105;
                    txt.CssClass = "rightside brdrcl";
                    txt.Enabled = false;

                    txt.Text = GridView1.Rows[i].Cells[4].Text + " \n\n" + GridView1.Rows[i].Cells[1].Text + " \n " + GridView1.Rows[i].Cells[2].Text + " \n " + GridView1.Rows[i].Cells[3].Text;
                   

                    Panel1.Controls.Add(txt);

                    LiteralControl literalBreak = new LiteralControl("<br/><br/>");
                    Panel1.Controls.Add(literalBreak);

                }
                else
                {                   
                    TextBox txt = new TextBox();
                    txt.ReadOnly = true;
                    txt.TextMode = TextBoxMode.MultiLine;
                    txt.Columns = 60;                    
                    txt.Height = 105;
                    txt.CssClass = "brdrcl";
                    
                    txt.Enabled = false;
                                        
                    txt.Text = GridView1.Rows[i].Cells[4].Text + " \n\n " + GridView1.Rows[i].Cells[1].Text + " \n " + GridView1.Rows[i].Cells[2].Text + " \n " + GridView1.Rows[i].Cells[3].Text;

                    Panel1.Controls.Add(txt);

                    LiteralControl literalBreak = new LiteralControl("<br /><br/>");                    
                    Panel1.Controls.Add(literalBreak);
                
                }

            }
           
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            dropdownMenu1.Visible = false;

            uname = Request["user"];
            Label1.Text = uname;

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


            if (Label1.Text != "")
            {
                Label1.Visible = true;
                dropdownMenu1.Visible = true;
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