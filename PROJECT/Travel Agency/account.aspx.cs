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
    public partial class account : System.Web.UI.Page
    {
        public string uname;

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlDataAdapter da1 = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;


        private Controller.DBCon dbcon = new Controller.DBCon();

        protected void Page_Init(object sender, EventArgs e)
        {
            uname = Request["user"];         

          
            string q1 = "SELECT c.tid AS 'TID',c.main_category as 'MAIN CATEGORY',c.sub_category as 'SUB CATEGORY',c.travel_date as 'TRAVEL DATE',c.group_size AS 'GROUP SIZE',c.duration AS 'DURATION',c.budget as 'BUDGET (US $)',c.inquiry_date as 'INQUIRY DATE',c.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_tours c left join vehicle v on c.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";

            string q2 = "SELECT cc.ctid AS 'CTID',cc.interests as 'INTERESTS',cc.accommodation as 'ACCOMMODATION',cc.travel_date AS 'TRAVEL DATE',cc.travel_date_to as 'END DATE',cc.group_size as 'GROUP SIZE',cc.duration as 'DURATION',cc.budget as 'BUDGET (PER PERSON)',cc.inquiry_date as 'INQUIRY DATE',cc.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_customize_tours cc left join vehicle v on cc.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";
            
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

            DataTable dt1 = new DataTable();
            DataSet ds1 = new DataSet();
            con = new MySqlConnection(constring);
            con.Open();
            da1 = new MySqlDataAdapter(q2, con);
            da1.Fill(ds1);

            GridView2.DataSource = ds1;
            GridView2.DataBind();

            con.Close();

            if (GridView1.Rows.Count == 0)
            {               
                Label4.Text = "No Any Trips to Go ! ! !";
                Label4.Visible = true;
            }

            if (GridView2.Rows.Count == 0)
            {
                Label5.Text = "No Any Customize Trips to Go ! ! !";
                Label5.Visible = true;
            }
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Visible = false;
            dropdownMenu1.Visible = false;
            
            uname = Request["user"];
            Label6.Text = uname;

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

            if (Label6.Text != "")
            {
                Label6.Visible = true;
                dropdownMenu1.Visible = true;

                Label1.Text = uname;
                Label1.Visible = true;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
                       
               e.Row.Cells[1].Visible = false;
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {                              
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#C0C0C0'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           

            Label2.Visible = false;
            Label3.Visible = false;

            string selectedValue = Request.Form["MyRadioButton"];
            selectedValue = selectedValue.Substring(0, selectedValue.Length - 3);
                       

            if (selectedValue == "A Short Escape")
            {
                Response.Redirect("familyescapes001.aspx?user=" + uname);
            }
            else if (selectedValue == "Something Old Something New")
            {
                Response.Redirect("familyescapes002.aspx?user=" + uname);
            }
            else if (selectedValue == "Through The Time line")
            {
                Response.Redirect("familyescapes003.aspx?user=" + uname);
            }
            else if (selectedValue == "A Wild Tour")
            {
                Response.Redirect("wildlife001.aspx?user=" + uname);
            }
            else if (selectedValue == "Nature and Us")
            {
                Response.Redirect("wildlife002.aspx?user=" + uname);
            }
            else if (selectedValue == "Lets Go Wild")
            {
                Response.Redirect("wildlife003.aspx?user=" + uname);
            }
            else if (selectedValue == "Adventure & Camping")
            {
                Response.Redirect("specialinterest001.aspx?user=" + uname);
            }
            else if (selectedValue == "Architectural Tour")
            {
                Response.Redirect("specialinterest002.aspx?user=" + uname);
            }
            else if (selectedValue == "Archaeological Tour")
            {
                Response.Redirect("specialinterest003.aspx?user=" + uname);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Label2.Visible = false;
            Label3.Visible = false;

            string selectedValue = Request.Form["MyRadioButton"];
            string newval = selectedValue.Substring(selectedValue.Length - 2);

            string q1 = "DELETE FROM cus_tours WHERE tid=" + newval + "";
            
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();
            com = new MySqlCommand(q1, con);

            int x = com.ExecuteNonQuery();

            if (x > 0)
            {
                Label2.Text = "You'r Trip has been Canceled";
                Label2.Visible = true;
            }

            con.Close();
                                 
            string q2 = "SELECT c.tid AS 'TID',c.main_category as 'MAIN CATEGORY',c.sub_category as 'SUB CATEGORY',c.travel_date as 'TRAVEL DATE',c.group_size AS 'GROUP SIZE',c.duration AS 'DURATION',c.budget as 'BUDGET (US $)',c.inquiry_date as 'INQUIRY DATE',c.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_tours c left join vehicle v on c.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";

            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            con = new MySqlConnection(constring);
            con.Open();
            da = new MySqlDataAdapter(q2, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();            
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {                        
            if (e.Row.RowType == DataControlRowType.DataRow)
            {                
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#C0C0C0'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;
            
            string selectedValue = Request.Form["MyRadioButton1"];
                      
            string q3 = "DELETE FROM cus_customize_tours WHERE ctid=" + selectedValue + "";
            
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();
            com = new MySqlCommand(q3, con);

            int x = com.ExecuteNonQuery();

            if (x > 0)
            {                
                Label3.Text = "Your Customize Trip has been Removed";
                Label3.Visible = true;
            }

            con.Close();

            string q4 = "SELECT cc.ctid AS 'CTID',cc.interests as 'INTERESTS',cc.accommodation as 'ACCOMMODATION',cc.travel_date AS 'TRAVEL DATE',cc.travel_date_to as 'END DATE',cc.group_size as 'GROUP SIZE',cc.duration as 'DURATION',cc.budget as 'BUDGET (PER PERSON)',cc.inquiry_date as 'INQUIRY DATE',cc.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_customize_tours cc left join vehicle v on cc.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";

            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            con = new MySqlConnection(constring);
            con.Open();
            da = new MySqlDataAdapter(q4, con);
            da.Fill(ds);


            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string country, fdbk;
            DateTime date;
             
             date = DateTime.Now;
             fdbk = TextBox1.Text;
             country = "";

             if (TextBox1.Text == "")
             {
                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Type Your feedback Before Post It')", true);
             }
             else
             {
                 Controller.DBCon dbcon = new Controller.DBCon();
                 string constring = dbcon.constring;

                 con = new MySqlConnection(constring);
                 con.Open();

                 string q5 = "select country from cus_master where uname='" + uname + "'";

                 com = new MySqlCommand(q5, con);

                 dr = com.ExecuteReader();
                 while (dr.Read())
                 {
                     country = dr[0].ToString();
                 }

                 con.Close();

                 con.Open();

                 string q6 = "INSERT INTO feedback(uname,country,date,fdbk) VALUES(@a,@b,@c,@d)";

                 com = new MySqlCommand(q6, con);

                 com.Parameters.AddWithValue("@a", uname);
                 com.Parameters.AddWithValue("@b", country);
                 com.Parameters.AddWithValue("@c", date);
                 com.Parameters.AddWithValue("@d", fdbk);

                 int x = com.ExecuteNonQuery();
                 con.Close();
                 
                 if (x > 0)
                 {
                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank You For Your Feedback ! ! !')", true);
                     TextBox1.Text = "";
                 }
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

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("testimonials.aspx?user=" + uname);
        }       

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("vehicle.aspx?user=" + uname);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("vehicle.aspx?user=" + uname);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;

            string selectedValue = Request.Form["MyRadioButton"];
            string newval = selectedValue.Substring(selectedValue.Length - 2);
            
            string q1 = "update cus_tours set vno=null where tid="+newval+"";            

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();
            com = new MySqlCommand(q1, con);

            int x = com.ExecuteNonQuery();

            if (x > 0)
            {
                Label2.Text = "Your Vehicle has been Removed";
                Label2.Visible = true;
            }

            con.Close();

            string q2 = "SELECT c.tid AS 'TID',c.main_category as 'MAIN CATEGORY',c.sub_category as 'SUB CATEGORY',c.travel_date as 'TRAVEL DATE',c.group_size AS 'GROUP SIZE',c.duration AS 'DURATION',c.budget as 'BUDGET (US $)',c.inquiry_date as 'INQUIRY DATE',c.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_tours c left join vehicle v on c.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";

            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            con = new MySqlConnection(constring);
            con.Open();
            da = new MySqlDataAdapter(q2, con);
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();            
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Label3.Visible = false;

            string selectedValue = Request.Form["MyRadioButton1"];
            
            string q3 = "update cus_customize_tours set vno=null where ctid=" + selectedValue + "";

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();
            com = new MySqlCommand(q3, con);

            int x = com.ExecuteNonQuery();

            if (x > 0)
            {
                Label3.Text = "Your Vehicle has been Removed";
                Label3.Visible = true;
            }

            con.Close();

            string q4 = "SELECT cc.ctid AS 'CTID',cc.interests as 'INTERESTS',cc.accommodation as 'ACCOMMODATION',cc.travel_date AS 'TRAVEL DATE',cc.travel_date_to as 'END DATE',cc.group_size as 'GROUP SIZE',cc.duration as 'DURATION',cc.budget as 'BUDGET (PER PERSON)',cc.inquiry_date as 'INQUIRY DATE',cc.status as 'Confirmed ? (Y/N)',v.vname as 'VEHICLE NAME' FROM cus_customize_tours cc left join vehicle v on cc.vno=v.vno where uname='" + uname + "' ORDER BY travel_date";

            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            con = new MySqlConnection(constring);
            con.Open();
            da = new MySqlDataAdapter(q4, con);
            da.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();

            con.Close();            
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            string email="",url;

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q1 = "SELECT email FROM cus_master where uname='" + uname + "'";

            com = new MySqlCommand(q1, con);
            dr = com.ExecuteReader();

            while (dr.Read())
            {
                email = (dr["email"].ToString());
            }
            dr.Close();
            con.Close();

            url = "http://localhost:1960/changepw.aspx?email=" + email;

            Response.Redirect(url);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }             
    }
}