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
    public partial class vehicle : System.Web.UI.Page
    {
        public string uname;

        public string vname;
        public string vtype;
        public string vehicletype;
        public string rate;
        public string excess;
        

        public MySqlConnection con = null;
        public MySqlDataAdapter da = null;
        public MySqlCommand com = null;

        public MySqlDataReader dr = null;


        private Controller.DBCon dbcon = new Controller.DBCon();

        protected void Page_Init(object sender, EventArgs e)
        {
            Button1.Enabled = false;

            vtype = "Standard Cars";

            fillgridview(vtype);                                
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
            dropdownMenu1.Visible = false;

            uname = Request["user"];
            Label3.Text = uname;


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



            if (Label3.Text != "")
            {
                Label3.Visible = true;
                dropdownMenu1.Visible = true;
            }

            
            if (DropDownList1.SelectedIndex == 0)
            {
                string top = "Select Vehicle";
             
                DropDownList2.Items.Insert(0, top);
                DropDownList2.Enabled = false;
            }

            Label5.Visible = false;
                       
            if (uname == "")
            {
                Label6.Visible = false;
                Label7.Visible = false;
                Label8.Visible = false;
                Label9.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;
                DropDownList1.Visible = false;
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                DropDownList4.Visible = false;
                save_btn.Visible = false;
                DropDownList5.Visible = false;                
            }
        }
     
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("services.aspx?user=" + uname);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Enabled = false;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "Standard Cars";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = false;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "Premium Cars";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = false;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "Luxury Cars";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = false;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "4 WD Vehicles";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = false;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "Standard Vans";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = false;
            Button8.Enabled = true;
            Button9.Enabled = true;

            vtype = "Premium Vans";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = false;
            Button9.Enabled = true;

            vtype = "Mini Coaches";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            Button3.Enabled = true;
            Button4.Enabled = true;
            Button5.Enabled = true;
            Button6.Enabled = true;
            Button7.Enabled = true;
            Button8.Enabled = true;
            Button9.Enabled = false;

            vtype = "Luxury Busses";

            fillgridview(vtype);

            TextBox1.Text = "";
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string q1;
            
            if (TextBox1.Text == "")
            {
                Button1.Enabled = false;                
                Button3.Enabled = true;
                Button4.Enabled = true;
                Button5.Enabled = true;
                Button6.Enabled = true;
                Button7.Enabled = true;
                Button8.Enabled = true;
                Button9.Enabled = true;

                vtype = "Standard Cars";

                q1 = "SELECT vname as 'Vehicle',rate_per_day_US_$ as 'Rate Per Day (US $)',excess_km_US_$ as 'Excess Km (US $)' FROM vehicle where vtype='" + vtype + "'";
            }

            else
            {
                Button1.Enabled = true;
                Button3.Enabled = true;
                Button4.Enabled = true;
                Button5.Enabled = true;
                Button6.Enabled = true;
                Button7.Enabled = true;
                Button8.Enabled = true;
                Button9.Enabled = true;

                q1 = "SELECT vname as 'Vehicle',rate_per_day_US_$ as 'Rate Per Day (US $)',excess_km_US_$ as 'Excess Km (US $)',vtype as 'Type' FROM vehicle where vname like '%" + TextBox1.Text + "%'";
            }

            
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

            Label2.Text = this.GridView1.Rows.Count.ToString();           
            if (Convert.ToInt32(Label2.Text) == 0)
            {
                Label1.Visible = true;
                Label1.Text = "The search Term (" + TextBox1.Text + ") &nbsp;Is Not Available in the Records!!!";
            }
            else
            {
                Label1.Visible = false;
            }
        }


        public void fillgridview(string vtype)
        {

            string q1 = "SELECT vname as 'Vehicle',rate_per_day_US_$ as 'Rate Per Day (US $)',excess_km_US_$ as 'Excess Km (US $)' FROM vehicle where vtype='" + vtype + "'";


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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                    
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#FFB84D'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            string q8 = ""; string q81 = "";

            if (DropDownList1.SelectedIndex == 0)
            {
                Label5.Visible = true;
            }
            else if (DropDownList2.SelectedIndex == 0)
            {
                Label5.Visible = true;
            }

            else if (DropDownList5.SelectedIndex == 0)
            {
                Label5.Visible = true;
            }
            else if ((DropDownList5.SelectedIndex == 1) && (DropDownList3.SelectedIndex == 0))
            {
                Label5.Visible = true;
            }
            else if ((DropDownList5.SelectedIndex == 2) && (DropDownList4.SelectedIndex == 0))
            {
                Label5.Visible = true;
            }
            else
            {
                string vehicleno = Label4.Text;

                if (DropDownList5.SelectedIndex == 1)
                {
                    string datetour = DropDownList3.SelectedItem.ToString();
                    

                    string date = datetour.Substring(0, 10);
                    string tour = datetour.Substring(13);

                     q8 = "update cus_tours set vno='" + vehicleno + "' where uname='" + uname + "' and travel_date='" + date + "' and sub_category='" + tour + "'";
                     q81 = "update vehicle set status='Not Available' where vno='" + vehicleno + "'";
                
                
                }
                else if (DropDownList5.SelectedIndex == 2)
                {
                    string cusdatetour = DropDownList4.SelectedItem.ToString();

                    string cusdate = cusdatetour.Substring(0, 10);
                    string custourid = cusdatetour.Substring(13);

                     q8 = "update cus_customize_tours set vno='" + vehicleno + "' where uname='" + uname + "' and travel_date='" + cusdate + "' and ctid='" + custourid + "'";
                     q81 = "update vehicle set status='Not Available' where vno='" + vehicleno + "'";
                }

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;
                con.Open();
                com = new MySqlCommand(q8, con);
                int x = com.ExecuteNonQuery();
                con.Close();


                con.Open();
                com = new MySqlCommand(q81, con);
                int x1 = com.ExecuteNonQuery();
                con.Close();

                if (x > 0 && x1 >0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Vehicle Added To Your Trip successfully ! ! !')", true);

                    DropDownList1.SelectedIndex = 0;

                    string top = "Select Vehicle";

                    DropDownList2.Items.Insert(0, top);
                    DropDownList2.SelectedIndex = 0;
                    DropDownList2.Enabled = false;

                    DropDownList5.SelectedIndex = 0;
                    DropDownList5.Enabled = false;

                    DropDownList3.Items.Clear();

                    string top1 = "Select Tour";                    
                    DropDownList3.Items.Insert(0, top1);
                    
                    DropDownList3.SelectedIndex = 0;
                    DropDownList3.Enabled = false;


                    DropDownList4.Items.Clear();

                    string top2 = "Select Tour (Travel Date, Tour ID)";
                    DropDownList4.Items.Insert(0, top2);

                    DropDownList4.SelectedIndex = 0;
                    DropDownList4.Enabled = false;  

                    Label5.Visible = false;

                    
                }

                
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {            

            if (DropDownList1.SelectedIndex == 0)
            {
                DropDownList2.Enabled = false;
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Standard Cars";
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Premium Cars";
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Luxury Cars";
            }
            else if (DropDownList1.SelectedIndex == 4)
            {
                DropDownList2.Enabled = true;
                vehicletype = "4 WD Vehicles";
            }
            else if (DropDownList1.SelectedIndex == 5)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Standard Vans";
            }
            else if (DropDownList1.SelectedIndex == 6)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Premium Vans";
            }
            else if (DropDownList1.SelectedIndex == 7)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Mini Coaches";
            }
            else if (DropDownList1.SelectedIndex == 8)
            {
                DropDownList2.Enabled = true;
                vehicletype = "Luxury Busses";
            }
         
            
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            string q2 = "select * from vehicle where vtype='" + vehicletype + "' and status='Available'";
            con.Open();

            MySqlDataAdapter da = new MySqlDataAdapter(q2, con);
            DataTable dt = new DataTable();
            
            da.Fill(dt);
            DropDownList2.DataSource = dt;            
            DropDownList2.DataTextField = "vname";

            DropDownList2.DataValueField = "vname";
            DropDownList2.DataBind();

            con.Close();

            string top = "Select Vehicle";          
            DropDownList2.Items.Insert(0, top);            
        }        

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string vehiclename = "";
            string vno = "";

            vehiclename = DropDownList2.SelectedItem.ToString();
            
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            string q4 = "SELECT vno FROM vehicle WHERE vname='" + vehiclename + "'";
            
            con.Open();

            com = new MySqlCommand(q4, con);

            dr = com.ExecuteReader();
            while (dr.Read())
            {
                vno = dr[0].ToString();
            }
            con.Close();

            Label4.Text = vno;           

            DropDownList5.Enabled = true;
            
        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList5.SelectedIndex == 0)
            {
                DropDownList3.Enabled = false;
                DropDownList4.Enabled = false;

                DropDownList3.Items.Clear();
                string top1 = "Select Tour";
                DropDownList3.Items.Insert(0, top1);
                DropDownList3.SelectedIndex = 0;

                DropDownList4.Items.Clear();
                string top2 = "Select Tour (Travel Date, Tour ID)";
                DropDownList4.Items.Insert(0, top2);
                DropDownList4.SelectedIndex = 0;

                Label12.Visible = false;
                Label13.Visible = false;
            }
            else if (DropDownList5.SelectedIndex == 1)
            {
                DropDownList3.Enabled = true;
                DropDownList4.Enabled = false;                
                                             
                string q3 = "SELECT CONCAT(CONVERT(travel_date,CHAR(10)),' , ',sub_category) AS 'Trips' FROM cus_tours WHERE uname='" + uname + "' AND status ='N'";

                con.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(q3, con);
                DataTable dt1 = new DataTable();

                da1.Fill(dt1);

                if (dt1.Rows.Count == 0)
                {
                    Label12.Visible = true;
                    Label13.Visible = false;

                    DropDownList4.Items.Clear();
                    string top2 = "Select Tour (Travel Date, Tour ID)";
                    DropDownList4.Items.Insert(0, top2);
                    DropDownList4.SelectedIndex = 0;

                }
                else
                {
                    Label12.Visible = false;
                    Label13.Visible = false;

                    DropDownList3.DataSource = dt1;
                    DropDownList3.DataTextField = "Trips";
                    DropDownList3.DataValueField = "Trips";
                    DropDownList3.DataBind();


                    DropDownList4.Items.Clear();
                    string top2 = "Select Tour (Travel Date, Tour ID)";
                    DropDownList4.Items.Insert(0, top2);
                    DropDownList4.SelectedIndex = 0;
                }

                con.Close();               
            }
            else if (DropDownList5.SelectedIndex == 2)
            {
                DropDownList4.Enabled = true;
                DropDownList3.Enabled = false;
                                           
                string q3 = "SELECT CONCAT(CONVERT(travel_date,CHAR(10)),' , ',CONVERT (ctid,CHAR(2))) AS 'Trips' FROM cus_customize_tours WHERE uname='" + uname + "' AND status ='N'";

                con.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(q3, con);
                DataTable dt1 = new DataTable();

                da1.Fill(dt1);

                if (dt1.Rows.Count == 0)
                {
                    Label13.Visible = true;
                    Label12.Visible = false;

                    DropDownList3.Items.Clear();
                    string top1 = "Select Tour";
                    DropDownList3.Items.Insert(0, top1);
                    DropDownList3.SelectedIndex = 0;
                }
                else
                {
                    Label13.Visible = false;
                    Label12.Visible = false;

                    DropDownList4.DataSource = dt1;
                    DropDownList4.DataTextField = "Trips";
                    DropDownList4.DataValueField = "Trips";
                    DropDownList4.DataBind();

                    DropDownList3.Items.Clear();
                    string top1 = "Select Tour";
                    DropDownList3.Items.Insert(0, top1);
                    DropDownList3.SelectedIndex = 0;
                }
                con.Close();
            }
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }               
    }
}