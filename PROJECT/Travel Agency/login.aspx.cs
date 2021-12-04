using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;

using System.Security.Cryptography;
using System.Net.Mail;
using System.Web.Security;

namespace Travel_Agency
{
    public partial class login : System.Web.UI.Page
    {

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;
        public MySqlDataReader dr = null;

        public static string thara="";
        string utype;

        protected void Page_Load(object sender, EventArgs e)
        {
            thara="x";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string uname, pw;

            uname = TextBox1.Text;
            pw = TextBox2.Text;

            //if ((uname == "admin") && (pw == "admin"))
            //{
            //    FormsAuthentication.SetAuthCookie(uname, true);
            //    Response.Redirect("adminNew.aspx?user=" + uname);
            //}
            //else
            //{

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q1 = "SELECT uname ,utype FROM cus_master where uname='" + uname + "'and pw='" + pw + "'";

                com = new MySqlCommand(q1, con);
                dr = com.ExecuteReader();

                while (dr.Read())
                {
                    Label1.Text = (dr["uname"].ToString());
                    utype = (dr["utype"].ToString()); ;
                }
                dr.Close();
                con.Close();

                if (Label1.Text != "")
                {
                    if (utype == "admin") //
                    {
                        FormsAuthentication.SetAuthCookie(uname, true);
                        Response.Redirect("adminNew.aspx?user=" + uname);
                    }
                    else
                    {//
                        FormsAuthentication.SetAuthCookie(uname, true);
                        Response.Redirect("index.aspx?user=" + uname);
                    }//
                }
                else
                {
                    Label2.Visible = true;
                }

            //}

        }
       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = false;
            Label4.Visible = false;

            Label3.Visible = true;
            TextBox3.Text = "";
            TextBox3.Visible = true;
            Button3.Visible = true;
            Button4.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "")
            {
                Label4.Text = "Please Enter Your Email !";
                Label4.Visible = true;
            }
            else
            {

                string too, url;

                too = TextBox3.Text;
                string adrs = TextBox3.Text;
            
                url = "http://localhost:1960/changepw.aspx?email=" + adrs;

                string sub = "Information About Changing Password";
                string smtp = "smtp.gmail.com";


                string bodyy = "This is the Url that you can change your account password.\nPlease go through this link & change Your Password.\n\nChange Your Password : " + url;


                string un = "emeraldtours.pvtltd@gmail.com";
                string pass = "emerald123@";

                MailMessage mail = new MailMessage(adrs, too, sub, bodyy);

                SmtpClient client = new SmtpClient(smtp);
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential(un, pass);
                client.EnableSsl = true;
                client.Send(mail);

                Label4.Text = "Information Sent to Your Email... Please Check Your Email ! ! !";
                Label4.Visible = true;
                TextBox3.Text = "";
                TextBox3.Visible = false;
                Button3.Visible = false;
                Button4.Visible = false;
                Label3.Visible = false;
                LinkButton1.Visible = true;               
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;

            Label3.Visible = false;
            Label4.Visible = false;
            TextBox3.Text = "";
            TextBox3.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string uname1="";
            Response.Redirect("index.aspx?user=" + uname1);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Button1.Visible = true;
            Button2.Visible = true;
            LinkButton1.Visible = true;
           
            Label5.Text = "Login";

            Button5.Visible = false;
            Label6.Visible = false;

            Button6.Visible = false;
        }

    }
}