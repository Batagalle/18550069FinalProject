using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Data;

using System.Security.Cryptography;
using System.Net.Mail;

using System.Web.Security;

namespace Travel_Agency
{
    public partial class customizetour : System.Web.UI.Page
    {

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;

        public string budget="";
        public string interests = "";
        public string accommodation = "";

        public string uname, email, Mobile, fname;

        protected void Page_Load(object sender, EventArgs e)
        {

            ImageButton21.Visible = false;
            TextBox4.Visible = false;
            Label13.Visible = false;
            dropdownMenu1.Visible =false;
            TextBox5.Enabled = false;
            
            uname = Request["user"];
            Label13.Text = uname;

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


            if (Label13.Text != "")
            {
                Label13.Visible = true;
                dropdownMenu1.Visible = true;

                Button3.Visible = true;
            }

            if (Label13.Text == "")
            {
                Button3.Visible = false;

                Label5.Text = "Please Login Before Submit Your Tour";
                Label5.Visible = true;
            }

            if (!IsPostBack)
            {
                string script = "$(document).ready(function () { $('[id*=Button3]').click(); });";
                ClientScript.RegisterStartupScript(this.GetType(), "load", script, true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("tours.aspx?user=" + uname);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox1.Checked == false)
            { 
                CheckBox1.Checked = true;

                ListBox1.Items.Add("PRISTINE");
            }
            else
            {
                CheckBox1.Checked = false;

                ListBox1.Items.Remove("PRISTINE");
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox2.Checked == false)
            {
                CheckBox2.Checked = true;
                ListBox1.Items.Add("HERITAGE");
            }
            else
            {
                CheckBox2.Checked = false;
                ListBox1.Items.Remove("HERITAGE");
            }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox3.Checked == false)
            {
                CheckBox3.Checked = true;
                ListBox1.Items.Add("THRILLS");
            }
            else
            {
                CheckBox3.Checked = false;
                ListBox1.Items.Remove("THRILLS");
            }
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox4.Checked == false)
            {
                CheckBox4.Checked = true;
                ListBox1.Items.Add("WILD");
            }
            else
            {
                CheckBox4.Checked = false;
                ListBox1.Items.Remove("WILD");
            }
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox5.Checked == false)
            {
                CheckBox5.Checked = true;
                ListBox1.Items.Add("BLISS");
            }
            else
            {
                CheckBox5.Checked = false;
                ListBox1.Items.Remove("BLISS");
            }
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox6.Checked == false)
            {
                CheckBox6.Checked = true;
                ListBox1.Items.Add("SCENIC");
            }
            else
            {
                CheckBox6.Checked = false;
                ListBox1.Items.Remove("SCENIC");
            }
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox7.Checked == false)
            {
                CheckBox7.Checked = true;
                ListBox1.Items.Add("ESSENCE");
            }
            else
            {
                CheckBox7.Checked = false;
                ListBox1.Items.Remove("ESSENCE");
            }
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox8.Checked == false)
            {
                CheckBox8.Checked = true;
                ListBox1.Items.Add("FESTIVE");
            }
            else
            {
                CheckBox8.Checked = false;
                ListBox1.Items.Remove("FESTIVE");
            }
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox9.Checked == false)
            {
                CheckBox9.Checked = true;                
                
                ImageButton10.Enabled = false;
                ImageButton11.Enabled = false;
                ImageButton12.Enabled = false;
                ImageButton13.Enabled = false;
                ImageButton14.Enabled = false;
            }
            else
            {
                CheckBox9.Checked = false;
                       
                ImageButton10.Enabled = true;
                ImageButton11.Enabled = true;
                ImageButton12.Enabled = true;
                ImageButton13.Enabled = true;
                ImageButton14.Enabled = true;                
            }
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox10.Checked == false)
            {
                CheckBox10.Checked = true;
                
                ImageButton9.Enabled = false;
                ImageButton11.Enabled = false;
                ImageButton12.Enabled = false;
                ImageButton13.Enabled = false;
                ImageButton14.Enabled = false;                
            }
            else
            {
                CheckBox10.Checked = false;
               
                ImageButton9.Enabled = true;
                ImageButton11.Enabled = true;
                ImageButton12.Enabled = true;
                ImageButton13.Enabled = true;
                ImageButton14.Enabled = true;               
            }
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox11.Checked == false)
            {
                CheckBox11.Checked = true;
               
                ImageButton10.Enabled = false;
                ImageButton9.Enabled = false;
                ImageButton12.Enabled = false;
                ImageButton13.Enabled = false;
                ImageButton14.Enabled = false;               
            }
            else
            {
                CheckBox11.Checked = false;
               
                ImageButton10.Enabled = true;
                ImageButton9.Enabled = true;
                ImageButton12.Enabled = true;
                ImageButton13.Enabled = true;
                ImageButton14.Enabled = true;               
            }
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox12.Checked == false)
            {
                CheckBox12.Checked = true;
               
                ImageButton10.Enabled = false;
                ImageButton11.Enabled = false;
                ImageButton9.Enabled = false;
                ImageButton13.Enabled = false;
                ImageButton14.Enabled = false;               
            }
            else
            {
                CheckBox12.Checked = false;
                
                ImageButton10.Enabled = true;
                ImageButton11.Enabled = true;
                ImageButton9.Enabled = true;
                ImageButton13.Enabled = true;
                ImageButton14.Enabled = true;                
            }
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox13.Checked == false)
            {
                CheckBox13.Checked = true;
                
                ImageButton10.Enabled = false;
                ImageButton11.Enabled = false;
                ImageButton12.Enabled = false;
                ImageButton9.Enabled = false;
                ImageButton14.Enabled = false;                
            }
            else
            {
                CheckBox13.Checked = false;
                
                ImageButton10.Enabled = true;
                ImageButton11.Enabled = true;
                ImageButton12.Enabled = true;
                ImageButton9.Enabled = true;
                ImageButton14.Enabled = true;                
            }
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox14.Checked == false)
            {
                CheckBox14.Checked = true;
                
                ImageButton10.Enabled = false;
                ImageButton11.Enabled = false;
                ImageButton12.Enabled = false;
                ImageButton13.Enabled = false;
                ImageButton9.Enabled = false;                
            }
            else
            {
                CheckBox14.Checked = false;
                
                ImageButton10.Enabled = true;
                ImageButton11.Enabled = true;
                ImageButton12.Enabled = true;
                ImageButton13.Enabled = true;
                ImageButton9.Enabled = true;                
            }
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox15.Checked == false)
            {
                CheckBox15.Checked = true;
                ListBox2.Items.Add("HOME STAYS");
            }
            else
            {
                CheckBox15.Checked = false;
                ListBox2.Items.Remove("HOME STAYS");
            }
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox16.Checked == false)
            {
                CheckBox16.Checked = true;
                ListBox2.Items.Add("BUDGET ACCOMMODATION");
            }
            else
            {
                CheckBox16.Checked = false;
                ListBox2.Items.Remove("BUDGET ACCOMMODATION");
            }
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox17.Checked == false)
            {
                CheckBox17.Checked = true;
                ListBox2.Items.Add("STANDARD HOTELS (2* & 3*)");
            }
            else
            {
                CheckBox17.Checked = false;
                ListBox2.Items.Remove("STANDARD HOTELS (2* & 3*)");
            }
        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox18.Checked == false)
            {
                CheckBox18.Checked = true;
                ListBox2.Items.Add("DULUXE HOTELS (3* & 4*)");
            }
            else
            {
                CheckBox18.Checked = false;
                ListBox2.Items.Remove("DULUXE HOTELS (3* & 4*)");
            }
        }

        protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox19.Checked == false)
            {
                CheckBox19.Checked = true;
                ListBox2.Items.Add("SUPERIOR HOTELS (4* & 5*)");
            }
            else
            {
                CheckBox19.Checked = false;
                ListBox2.Items.Remove("SUPERIOR HOTELS (4* & 5*)");
            }
        }

        protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
        {
            if (CheckBox20.Checked == false)
            {
                CheckBox20.Checked = true;
                ListBox2.Items.Add("BOUTIQUE HOTELS");
            }
            else
            {
                CheckBox20.Checked = false;
                ListBox2.Items.Remove("BOUTIQUE HOTELS");
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            int d;
            if (int.TryParse(TextBox2.Text, out d))
            {
                Label3.Visible = false;               
            }
            else
            {
                Label3.Text = "Please Enter Valid Group Size";
                Label3.Visible = true;
            }                 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = "0000-00-00";
            Label5.Visible = false;
            
            if (TextBox1.Text == "" || TextBox6.Text == "")
            {
               
            }
            else
            {
                DateTime date = Convert.ToDateTime(TextBox1.Text);
                DateTime now = DateTime.Now;

                if (date > now)
                {

                    if ((CheckBox1.Checked == false) && (CheckBox2.Checked == false) && (CheckBox3.Checked == false) && (CheckBox4.Checked == false) && (CheckBox5.Checked == false) && (CheckBox6.Checked == false) && (CheckBox7.Checked == false) && (CheckBox8.Checked == false))
                    {
                        Label1.Visible = true;

                        Label7.Visible = true;
                    }
                    else
                    {
                        Label1.Visible = false;

                        Label7.Visible = false;

                        interests = "";

                        for (int x = 0; ListBox1.Items.Count > x; x++)
                        {
                            interests = ListBox1.Items[x].ToString() + ", " + interests;
                        }
                    }


                    if ((CheckBox9.Checked == false) && (CheckBox10.Checked == false) && (CheckBox11.Checked == false) && (CheckBox12.Checked == false) && (CheckBox13.Checked == false) && (CheckBox14.Checked == false))
                    {
                        Label8.Visible = true;

                        Label11.Visible = true;
                    }
                    else
                    {
                        Label8.Visible = false;

                        Label11.Visible = false;

                        if (CheckBox9.Checked == true)
                        {
                            budget = "UP TO USD 499";
                        }
                        else if (CheckBox10.Checked == true)
                        {
                            budget = "UP TO USD 999";
                        }
                        else if (CheckBox11.Checked == true)
                        {
                            budget = "UP TO USD 1499";
                        }
                        else if (CheckBox12.Checked == true)
                        {
                            budget = "UP TO USD 1999";
                        }
                        else if (CheckBox13.Checked == true)
                        {
                            budget = "UP TO USD 2499";
                        }
                        else if (CheckBox14.Checked == true)
                        {
                            budget = "UP TO USD 3000";
                        }
                    }

                    if ((CheckBox15.Checked == false) && (CheckBox16.Checked == false) && (CheckBox17.Checked == false) && (CheckBox18.Checked == false) && (CheckBox19.Checked == false) && (CheckBox20.Checked == false))
                    {
                        Label9.Visible = true;

                        Label12.Visible = true;
                    }
                    else
                    {
                        Label9.Visible = false;

                        Label12.Visible = false;

                        accommodation = "";

                        for (int x = 0; ListBox2.Items.Count > x; x++)
                        {
                            accommodation = ListBox2.Items[x].ToString() + "," + accommodation;
                        }
                    }

                    TextBox4.Text = "9960";
                    string captch = TextBox4.Text;

                    if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox5.Text == "") || (TextBox6.Text == "") || (Label1.Visible == true) || (Label8.Visible == true) || (Label9.Visible == true))
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Fill All The Steps For Submit Your Tour')", true);
                    }
                    else
                    {

                        if (TextBox4.Text == "")
                        {
                            Label5.Text = "Please Enter Captcha to Submit Your Inquiry";
                            Label5.Visible = true;
                        }
                        else
                        {
                            int d, f;
                            if (int.TryParse(TextBox5.Text, out f))
                            {
                                if (int.TryParse(TextBox2.Text, out d))
                                {
                                    if (captch == "9960")
                                    {

                                        System.Threading.Thread.Sleep(5000);

                                        string otherdetail;
                                        int g_size, duration;
                                        DateTime t_date, t_date_to, inquiry_date;

                                        t_date = Convert.ToDateTime(TextBox1.Text);
                                        t_date_to = Convert.ToDateTime(TextBox6.Text);
                                        duration = Convert.ToInt32(TextBox5.Text);
                                        g_size = Convert.ToInt32(TextBox2.Text);
                                        otherdetail = TextBox3.Text;

                                        inquiry_date = DateTime.Now;

                                        Controller.DBCon dbcon = new Controller.DBCon();
                                        string constring = dbcon.constring;

                                        con = new MySqlConnection(constring);
                                        con.Open();

                                        string q2 = "INSERT INTO cus_customize_tours(uname,interests,budget,accommodation,travel_date,travel_date_to,duration,group_size,other_details,inquiry_date) VALUES(@a,@b,@c,@d,@e,@j,@f,@g,@h,@i)";

                                        com = new MySqlCommand(q2, con);

                                        com.Parameters.AddWithValue("@a", uname);
                                        com.Parameters.AddWithValue("@b", interests);
                                        com.Parameters.AddWithValue("@c", budget);
                                        com.Parameters.AddWithValue("@d", accommodation);
                                        com.Parameters.AddWithValue("@e", t_date);
                                        com.Parameters.AddWithValue("@j", t_date_to);
                                        com.Parameters.AddWithValue("@f", duration);
                                        com.Parameters.AddWithValue("@g", g_size);
                                        com.Parameters.AddWithValue("@h", otherdetail);
                                        com.Parameters.AddWithValue("@i", inquiry_date);


                                        int x = com.ExecuteNonQuery();
                                        con.Close();

                                        if (x > 0)
                                        {
                                            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Fill All The Steps For Submit Your Tour')", true);
                                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You ! ! ! Your Inquiry is Submitted.')", true);

                                            Label2.Text = "Thank You ! ! !<br/>Your Inquiry is Submitted. Please Check Your Account<br/>You'll Receive a email About Your Inquiry";
                                            Label2.Visible = true;

                                            con.Open();

                                            string q3 = "select email from cus_master where uname='" + uname + "'";
                                            com = new MySqlCommand(q3, con);
                                            dr = com.ExecuteReader();
                                            while (dr.Read())
                                            {
                                                email = dr[0].ToString();
                                            }
                                            con.Close();

                                            //Send email
                                            string too, url, adrs;

                                            too = email;
                                            adrs = email;
                                            url = "http://localhost:1960/login.aspx";

                                            string sub = "Inquiry About A Customize Tour";
                                            string smtp = "smtp.gmail.com";
                                            string bodyy = "Thank You! ! ! You Just Inquire Us About A Customize Tour...\nYour Inquiry Details Are...\n\nInterests : " + interests + "\nBudget : " + budget + "\nAccommodation : " + accommodation + "\nTrip Date : " + t_date + " \nDuration : " + duration + "\nGroup Size : " + g_size + "\nOther Details :\n\n " + otherdetail + "\n\n Account Details:0000680377006 Bank Of Ceylon - Ja Ela \n\nAlso You Can CheckOut The Trip That You Inquire Through Your Account.\n\nClick Here To Login Your Account :" + url;
                                            string un = "emeraldtours.pvtltd@gmail.com";
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
                                            //Controller.Registration reg = new Controller.Registration();
                                            //reg.ports(Mobile, Status); 

                                            TextBox1.Text = "";
                                            TextBox2.Text = "";
                                            TextBox3.Text = "";
                                            TextBox4.Text = "";
                                            TextBox6.Text = "";
                                            TextBox5.Text = "";
                                            Label3.Visible = false;
                                            Label5.Visible = false;

                                            Label1.Visible = false;
                                            Label8.Visible = false;
                                            Label9.Visible = false;

                                            CheckBox1.Checked = false;
                                            CheckBox2.Checked = false;
                                            CheckBox3.Checked = false;
                                            CheckBox4.Checked = false;
                                            CheckBox5.Checked = false;
                                            CheckBox6.Checked = false;
                                            CheckBox7.Checked = false;
                                            CheckBox8.Checked = false;
                                            CheckBox9.Checked = false;
                                            CheckBox10.Checked = false;
                                            CheckBox11.Checked = false;
                                            CheckBox12.Checked = false;
                                            CheckBox13.Checked = false;
                                            CheckBox14.Checked = false;
                                            CheckBox15.Checked = false;
                                            CheckBox16.Checked = false;
                                            CheckBox17.Checked = false;
                                            CheckBox18.Checked = false;
                                            CheckBox19.Checked = false;
                                            CheckBox20.Checked = false;
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

                                    if (captch == "9960")
                                    {
                                        Label5.Visible = false;
                                    }
                                }
                            }
                            else
                            {
                                //Label10.Text = "Please Enter Valid Duration";
                                //Label10.Visible = true;

                                //if (captch == "9960")
                                //{
                                //    Label5.Visible = false;
                                //}
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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            
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

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            int d;
            if (int.TryParse(TextBox6.Text, out d))
            {
                Label10.Visible = false;
            }
            else
            {


                DateTime Frm, to;
                Frm = Convert.ToDateTime(TextBox1.Text);
                to = Convert.ToDateTime(TextBox6.Text);

                if (Frm <= to)
                {
                    //duration
                    System.TimeSpan span = to - Frm;
                    int ddays = (int)span.TotalDays;
                    //TextBox5.Text = Convert.ToString(ddays)  + " "+ "Days";
                    TextBox5.Text = Convert.ToString(ddays);
                    Label10.Text = "";
                    Label10.Visible = false;
                }
                else
                {
                    Label10.Text = "Date is Higher then the From Date";
                    Label10.Visible = true;
                }                                                
               
      
            }    
        }
    }
}