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
    public partial class wildlife001 : System.Web.UI.Page
    {
        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;


        public string main_cat, sub_cat;
        public string uname, email, Mobile, fname;

        protected void Page_Init(object sender, EventArgs e)
        {
            main_cat = Request["val1"];
            sub_cat = "A Wild Tour";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label7.Visible = false;
            dropdownMenu1.Visible = false;

            uname = Request["user"];
            Label7.Text = uname;

            ImageButton1.Visible = false;
            TextBox4.Visible = false;

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



            if (Label7.Text != "")
            {
                Label7.Visible = true;
                dropdownMenu1.Visible = true;
            }


            if (Label7.Text == "")
            {
                Label8.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                Button3.Visible = false;
                ImageButton1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("wildlife.aspx?user=" + uname);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox4.Text = "9960";
            string captch = TextBox4.Text;


            if ((TextBox1.Text == "") || (TextBox2.Text == ""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the Travel Date & Group Size Before Submit Your Inquirey')", true);
            }
            else
            {

                  DateTime date = Convert.ToDateTime(TextBox1.Text);
            DateTime now = DateTime.Now;

            if (date > now)
            {

                if (TextBox4.Text == "")
                {
                    Label5.Text = "Please Enter Captcha to Submit Your Inquiry";
                    Label5.Visible = true;
                }
                else
                {
                    double d;
                    if (double.TryParse(TextBox2.Text, out d))
                    {
                        if (captch == "9960")
                        {
                            string g_size, otherdetail;
                            double budget;
                            DateTime t_date, inquiry_date;
                            int duration = 8;
                                                   
                            t_date = Convert.ToDateTime(TextBox1.Text);
                            g_size = TextBox2.Text;
                            otherdetail = TextBox3.Text;
                            budget = Convert.ToDouble(Label4.Text);

                            inquiry_date = DateTime.Now;

                            Controller.DBCon dbcon = new Controller.DBCon();
                            string constring = dbcon.constring;

                            con = new MySqlConnection(constring);
                            con.Open();

                            string q2 = "INSERT INTO cus_tours(uname,main_category,sub_category,travel_date,group_size,other_details,budget,inquiry_date,duration) VALUES(@a,@b,@c,@d,@e,@f,@g,@h,@i)";

                            com = new MySqlCommand(q2, con);

                            com.Parameters.AddWithValue("@a", uname);
                            com.Parameters.AddWithValue("@b", main_cat);
                            com.Parameters.AddWithValue("@c", sub_cat);
                            com.Parameters.AddWithValue("@d", t_date);
                            com.Parameters.AddWithValue("@e", g_size);
                            com.Parameters.AddWithValue("@f", otherdetail);
                            com.Parameters.AddWithValue("@g", budget);
                            com.Parameters.AddWithValue("@h", inquiry_date);
                            com.Parameters.AddWithValue("@i", duration);


                            int x = com.ExecuteNonQuery();
                            con.Close();

                            if (x > 0)
                            {

                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You ! ! ! Your Inquiry is Submitted.')", true);

                                Label2.Text = "Thank You ! ! !<br/>Your Inquiry is Submitted. Please Check Your Account<br/>You'll Receive a email About Your Inquiry";
                                Label2.Visible = true;

                                TextBox1.Text = "";
                                TextBox2.Text = "";
                                TextBox3.Text = "";
                                TextBox4.Text = "";
                                Label3.Visible = false;
                                Label4.Visible = false;
                                Label5.Visible = false;

                                con.Open();

                                string q3 = "select email from cus_master where uname='" + uname + "'";
                                com = new MySqlCommand(q3, con);
                                dr = com.ExecuteReader();
                                while (dr.Read())
                                {
                                    email = dr[0].ToString();
                                }
                                con.Close();

                                string too, url, adrs, paypal;

                                too = email;
                                adrs = email;
                                url = "http://localhost:1960/login.aspx";
                                paypal = "https://www.paypal.com/";

                                string sub = "Inquiry About a Tour";
                                string smtp = "smtp.gmail.com";
                                string bodyy = "Thank You! ! ! You Just Inquire Us About A Tour...\nYour Inquiry Details Are...\n\nMain Trip Category : " + main_cat + "\nSub Trip Category : " + sub_cat + "\nDuration : 8 Days, 7 Nights \nTrip Date : " + t_date.ToString("dd/MM/yyyy") + "\nGroup Size : " + g_size + "\nBudget : USD " + budget + "\n\nOther Details :\n " + otherdetail + "\n\nAlso You Can CheckOut The Trip That You Inquire Through Your Account.\n\nClick Here To Login Your Account :" + url + "\n\nAlso You can Pay with paypal.\nPlease Send the Full payment to 'emeraldtours.pvtltd@gmail.comtours123@gmail.com' through the Paypal Acount.\nClick here to Login Paypal :" + paypal;
                                string un = "emeraldtours.pvtltd@gmail.comtours123@gmail.com";
                                string pass = "emerald123@";

                                MailMessage mail = new MailMessage(adrs, too, sub, bodyy);
                                SmtpClient client = new SmtpClient(smtp);
                                client.Port = 587;
                                client.Credentials = new System.Net.NetworkCredential(un, pass);
                                client.EnableSsl = true;
                                client.Send(mail);
                     
                                //Send SMS

                                con.Open();
                                string q4 = "select fname, mobile from cus_master where uname='" + uname + "'";
                                com = new MySqlCommand(q4, con);
                                dr = com.ExecuteReader();
                                while (dr.Read())
                                {
                                    fname = dr[0].ToString();
                                    Mobile = dr[1].ToString();
                                }
                                con.Close();

                  
                                String Status = fname + ", Thank You For Your Inquiry... Please Visit Your Account For More Details & Check Your Mails...";
                                //Controller.Registration reg = new Controller.Registration(); sms
                                //reg.ports(Mobile, Status); sms
                            }
                        }

                        else
                        {
                            Label5.Visible = true;
                            Label5.Text = "Please Re-Enter Captcha to Confirm you are not a bot ";
                        }
                    }
                    else
                    {
                        Label3.Text = "Please Enter Valid Group Size";
                        Label3.Visible = true;
                        Label4.Visible = false;

                        if (captch == "9960")
                        {
                            Label5.Visible = false;
                        }
                    }
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select A Valid Date')", true);
            }
            }
          
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            double d;
            if (double.TryParse(TextBox2.Text, out d))
            {
                double grp_size = Convert.ToDouble(TextBox2.Text);
                              
                double u_fee = 290;

                double budget = grp_size * u_fee;

                Label3.Visible = true;
                Label3.Text = "Your Budget is : US $.";
                Label4.Visible = true;
                Label4.Text = Convert.ToString(budget);

            }
            else
            {
                Label3.Text = "Please Enter Valid Group Size";
                Label3.Visible = true;
                Label4.Visible = false;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (Label2.Visible == true)
            {
                Label2.Visible = false;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.ContentType = "Application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=A_Wild_Tour.pdf");
            Response.TransmitFile(Server.MapPath("tours pdf/A Wild Tour.pdf"));
            Response.End();
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}