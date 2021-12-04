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

namespace Travel_Agency
{
    public partial class changepw : System.Web.UI.Page
    {
        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;

        
        public string uname, email;

        protected void Page_Init(object sender, EventArgs e)
        {
            email = Request["email"];            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q1 = "SELECT uname FROM cus_master where email='" + email + "'";

            com = new MySqlCommand(q1, con);
            dr = com.ExecuteReader();

            while (dr.Read())
            {
                Label3.Text = (dr["uname"].ToString());
            }
            dr.Close();
            con.Close();

            if (Label3.Text == "")
            {
                Label2.Visible = false;
                Label3.Visible = false;
                
                Button1.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;

                Label1.Text = "You Don't Have Any Account, Please Register First";
                Label1.Visible = true;
                Button2.Visible = true;


            }
            else
            {
                Label1.Visible = false;
                Button2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text == "") && (TextBox2.Text == ""))
            {
                Label1.Text = "Please Fill All Fields. . .";
                Label1.Visible = true;
            }
            else if (TextBox1.Text == "")
            {
                Label1.Text = "Please Fill All Fields. . .";
                Label1.Visible = true;
            }
            else if (TextBox2.Text == "")
            {
                Label1.Text = "Please Fill All Fields. . .";
                Label1.Visible = true;
            }
            else
            {
                if (TextBox1.Text == TextBox2.Text)
                {
                    string pw;
                    pw = TextBox1.Text;
                    uname = Label3.Text;

                    Controller.DBCon dbcon = new Controller.DBCon();
                    string constring = dbcon.constring;

                    con = new MySqlConnection(constring);
                    con.Open();
                    
                    string q2 = "update cus_master set pw='" + pw + "' where uname='"+uname+"' and email='"+email+"'";

                    com = new MySqlCommand(q2, con);
                    
                    int x = com.ExecuteNonQuery();
                    con.Close();

                    if (x > 0)
                    {
                        Label1.Text = "Password Changed Succesfully ! ! !";
                        Label1.Visible = true;

                        TextBox1.Visible = false;
                        TextBox2.Visible = false;
                        Button1.Visible = false;
                        Button3.Visible = true;

                        string too, url;

                        too = email;
                        string adrs = email;

                        url = "http://localhost:1960/login.aspx";

                        string sub = "Account Password Has Been Changed ! ! !";
                        string smtp = "smtp.gmail.com";

                        string bodyy = "Your account password has been changed successfully. . .\nLogin Here : "+url;

                        string un = "emeraldtours.pvtltd@gmail.com";
                        string pass = "emerald123@";

                        MailMessage mail = new MailMessage(adrs, too, sub, bodyy);

                        SmtpClient client = new SmtpClient(smtp);
                        client.Port = 587;
                        client.Credentials = new System.Net.NetworkCredential(un, pass);
                        client.EnableSsl = true;
                        client.Send(mail);                                               
                    }
                }
                else
                {
                    Label1.Text = "Re-Enter Password Correctly ! ! !";
                    Label1.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}