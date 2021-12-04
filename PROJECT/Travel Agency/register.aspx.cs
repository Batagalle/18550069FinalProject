using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using MySql.Data.MySqlClient;

using System.Security.Cryptography;
using System.Net.Mail;

namespace Travel_Agency
{
    public partial class register : System.Web.UI.Page
    {

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;
       
        
        protected void Page_Init(object sender, EventArgs e)
        {
        
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string q1 = "SELECT country FROM country_codes";

                Controller.DBCon dbcon = new Controller.DBCon();
                DataTable dt = new DataTable();
                dt = dbcon.fillddl(q1);
                dbcon.CloseCon();

                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "country";
                DropDownList1.DataValueField = "country";
                DropDownList1.DataBind();


                TextBox4.Enabled = false;
            }           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

       

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {            
           
            string country = DropDownList1.SelectedItem.Text;
           
            string q1 = "SELECT code FROM country_codes where country='" + country + "'";

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            com = new MySqlCommand(q1, con);
            dr = com.ExecuteReader();

            while (dr.Read())
            {
                TextBox4.Text = (dr["code"].ToString());
            }
            dr.Close();
            con.Close();
            
            if (DropDownList1.SelectedIndex == 0)
            {
                TextBox4.Enabled = false;
                Label2.Visible = false;
            }
            else 
            {
                TextBox4.Enabled = true;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TextBox4.Text.Length > 18)
            {
                Label2.Visible = true;
            }
            else if (TextBox4.Text.Length < 8)
            {
                Label2.Visible = true;
            }
            else
            {
                Label2.Visible = false;
            }

            string fname, lname, address, country, mno, email, uname, pw;

            fname = TextBox1.Text;
            lname = TextBox2.Text;
            address = TextBox3.Text;
            country = DropDownList1.SelectedItem.ToString();
            mno = TextBox4.Text;
            email = TextBox6.Text;
            uname = TextBox7.Text;
            pw = TextBox8.Text;

            Controller.DBCon dbcon2 = new Controller.DBCon();
            string constring1 = dbcon2.constring;

            MySqlConnection con1 = new MySqlConnection(constring1);
            con1.Open();

            string q1 = "SELECT uname FROM cus_master where uname='" + uname + "'";

            MySqlCommand com1 = new MySqlCommand(q1, con1);
            dr = com1.ExecuteReader();

            if (dr.HasRows)
            {                
                Label3.Visible = true;
            }
            else
            {
                Label3.Visible = false;
            }

            con1.Close();

           
            con1.Open();

            string q3 = "SELECT email FROM cus_master where email='" + email + "'";

            MySqlCommand com2 = new MySqlCommand(q3, con1);
            dr = com2.ExecuteReader();

            if (dr.HasRows)
            {
                Label4.Visible = true;
            }
            else
            {
                Label4.Visible = false;
            }

            con1.Close();
            
            if ((Label2.Visible == false) && (Label3.Visible == false) && (Label4.Visible == false))
            {
                Controller.DBCon dbcon1 = new Controller.DBCon();
                string constring = dbcon1.constring;

                MySqlConnection con = new MySqlConnection(constring);
                con.Open();

                string q2 = "INSERT INTO cus_master(fname,lname,address,country,mobile,email,uname,pw) VALUES(@a,@b,@c,@d,@e,@f,@g,@h)";

                MySqlCommand com = new MySqlCommand(q2, con);

                com.Parameters.AddWithValue("@a", fname);
                com.Parameters.AddWithValue("@b", lname);
                com.Parameters.AddWithValue("@c", address);
                com.Parameters.AddWithValue("@d", country);
                com.Parameters.AddWithValue("@e", mno);
                com.Parameters.AddWithValue("@f", email);
                com.Parameters.AddWithValue("@g", uname);
                com.Parameters.AddWithValue("@h", pw);

                int x = com.ExecuteNonQuery();
                con.Close();

                if (x > 0)
                {
                    string too, username, password,url;
                                                           
                    too = TextBox6.Text;
                    string adrs = TextBox6.Text;                    

                    username = TextBox7.Text;
                    password = TextBox8.Text;
                    url="http://localhost:1960/login.aspx";

                    string sub = "Registration Details";
                    string smtp = "smtp.gmail.com";
                    
                    string bodyy = "Thank You For Registration! ! !\nStay With Us & Enjoy With Our Attractive Tour Plans\n\nYour Account Details Are Here..\nUser Name : " + username + "\nPassword : " + password + "\n\nClick Here For Login : " + url;

                    string un = "emeraldtours.pvtltd@gmail.com";
                    string pass = "emerald123@";
                    
                    MailMessage mail = new MailMessage(adrs,too, sub, bodyy);

                    SmtpClient client = new SmtpClient(smtp);
                    client.Port = 587;
                    client.Credentials = new System.Net.NetworkCredential(un, pass);
                    client.EnableSsl = true;
                    client.Send(mail);

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Registered Just Now. We Will Send Information About Your Account ! !')", true);

                    //Send SMS
                    String Mobile = TextBox4.Text;
                   // String Status = "Dear " + TextBox1.Text + ",You Are Registered In Our System.Thank You..! We Sent The Mail About Your Account Details.Please Check Your Mail";
                    //Controller.Registration reg = new Controller.Registration();
                   // reg.ports(Mobile, Status);

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    DropDownList1.SelectedIndex = 0;
                    TextBox4.Text = "";
                    TextBox4.Enabled = false;
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    Label2.Visible = false;
                    Label3.Visible = false;
                  
                }
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {            
            if (TextBox4.Text.Length > 18) 
            {
                Label2.Visible = true;
            }
            else if (TextBox4.Text.Length < 8)
            {
                Label2.Visible = true;
            }
            else 
            {
                Label2.Visible = false;
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedIndex = 0;
            TextBox4.Text = "";
            TextBox4.Enabled = false;
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label2.Visible = false;
            Label3.Visible = false;

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            Label3.Visible = false;                           
        }

 
    }
}