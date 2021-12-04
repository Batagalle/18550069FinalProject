using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

using System.Web.Security;

namespace Travel_Agency
{
    public partial class adminNew : System.Web.UI.Page
    {

        public string uname;
        public string s_type, val;
        public MySqlConnection con = null;
        public MySqlCommand com = null;
        public MySqlDataReader dr = null;
        public DataTable dt = null;
        public DataSet ds = null;
        public MySqlDataAdapter da = null;

        private Controller.DBCon dbcon = new Controller.DBCon();

        protected void Page_Init(object sender, EventArgs e)
        {            
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);         

            gvbind();
            Shopping_bind();
            fdbk_bind();
            country_code_bind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
            /*Sign out operation*/
            if (Page.User.Identity.IsAuthenticated)
            {

            }
            else
                FormsAuthentication.RedirectToLoginPage();

            uname = Request["user"];
            Label6.Text = uname;

            if (login.thara == "x")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                login.thara = "";
            }
  
           // Panel1.Visible=true;
           // Panel2.Visible = false;
            Label6.Visible = false;
           //   Panel2.Visible = false;
           // Panel3.Visible = false;
           // Panel4.Visible = false;
           //  Panel5.Visible = false;
            dropdownMenu1.Visible = false;

        }


        private void gvbind()
        {
            con.Open();
            com = new MySqlCommand("SELECT * FROM vehicle", con);//SELECT MAX(cu.travel_date_to) AS Max_Date FROM vehicle v,cus_customize_tours cu,cus_tours cus where cu.vno=cus.vno and v.vno=cus.vno and v.vno='16' group by v.vno 
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (GridView1.Rows.Count == 0)
            {
                Label7.Visible = true;
            }
            else
            {
                Label7.Visible = false;
            }
        }


        public void Shopping_bind()
        {
            con.Open();
            MySqlCommand com1 = new MySqlCommand("SELECT * FROM shopping", con);
            MySqlDataAdapter da1 = new MySqlDataAdapter(com1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            con.Close();

            GridView2.DataSource = ds1;
            GridView2.DataBind();

            if (GridView2.Rows.Count == 0)
            {
                Label3.Visible = true;
            }
            else
            {
                Label3.Visible = false;
            }
        }


        private void fdbk_bind()
        {
            con.Open();
            MySqlCommand com4 = new MySqlCommand("SELECT * FROM feedback", con);
            MySqlDataAdapter da2 = new MySqlDataAdapter(com4);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            con.Close();

            GridView3.DataSource = ds2;
            GridView3.DataBind();

            if (GridView3.Rows.Count == 0)
            {
                Label5.Visible = true;
            }
            else
            {
                Label5.Visible = false;
            }
        }


        private void country_code_bind()
        {
            con.Open();
            com = new MySqlCommand("SELECT * FROM country_codes", con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            GridView4.DataSource = ds;
            GridView4.DataBind();

            if (GridView4.Rows.Count == 0)
            {
                Label8.Visible = true;
            }
            else
            {
                Label8.Visible = false;
            }
        }


        protected void save_btn_Click(object sender, EventArgs e)
        {
            Controller.DBCon dbcon = new Controller.DBCon();

            //string vname, vtype, rate, addRate;
            string vname, vtype,sta;
            int rate;
            double addRate;

            if (rate_tbox.Text == "" || add_chr_tbox.Text == "" || vname_tbox.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please fill the details')", true);
            }
            else if (vtype_ddbox.SelectedValue == "Select Type")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select a Type')", true);
            }
            else
            {

                vname = vname_tbox.Text;
                vtype = vtype_ddbox.SelectedItem.Text;
                rate = Convert.ToInt32(rate_tbox.Text);
                addRate = Convert.ToDouble(add_chr_tbox.Text);
                sta = "Available";

                if (vtype == "Select Type")
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select a Type')", true);
                }
                else
                {
                    dbcon.DataInsert(vname, vtype, rate, addRate, sta);

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New record Inserted')", true);

                    vname_tbox.Text = "";
                    vtype_ddbox.SelectedIndex = 0;
                    rate_tbox.Text = "";
                    add_chr_tbox.Text = "";
                    gvbind();
                }

            }
        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            string q1;

            if (searchVal_txt.Text == "")
            {
                q1 = "SELECT * FROM vehicle";
            }
            else
            {
                q1 = "SELECT * FROM vehicle WHERE vname LIKE '%" + searchVal_txt.Text + "%'";
            }

            con.Open();

            com = new MySqlCommand(q1, con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (GridView1.Rows.Count == 0)
            {
                Label7.Visible = true;
                Button1.Visible = false;
                Button2.Visible = false;
            }
            else
            {
                Label7.Visible = false;
                Button1.Visible = true;
                Button2.Visible = true;
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                    
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            TextBox1.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            DropDownList1.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;

            Button1.Visible = true;
            Button2.Visible = true;


            string query;

            if (searchVal_txt.Text == "")
            {
                query = "SELECT * FROM vehicle";
            }
            else
            {
                query = "SELECT * FROM vehicle WHERE vname LIKE '%" + searchVal_txt.Text + "%'";
            }

            GridView1.PageIndex = e.NewPageIndex;
            gvwithpaging(GridView1, query);

            int pagenumber = GridView1.PageIndex + 1;
        }

        public void gvwithpaging(GridView gv, string some)
        {
            DataSet ds = null;
            if (gv.PageIndex == 0)
            {
                int myindex = 0;
                gv.PageIndex = myindex;
            }
            DatasetBinding(out ds, some);
            gv.DataSource = ds;
            gv.DataBind();
        }

        public void DatasetBinding(out DataSet dset, string myqry)
        {           
            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;         

            con = new MySqlConnection(constring);
            con.Open();

            da = new MySqlDataAdapter(myqry, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dset = ds;
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DropDownList4.Visible = true;
            string selectedValue;

            selectedValue = Request.Form["MyRadioButton"];
            Label1.Text = selectedValue;

            if (Label1.Text == "")
            {
                Label1.Text = "Please select a Relevant Radio Button that You Want to Edit";
                Label1.Visible = true;
                gvbind();
            }
            else
            {
                string ddv = "";
                int vno = Convert.ToInt32(Label1.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "select vname, vtype, rate_per_day_US_$, excess_km_US_$,status from vehicle where vno=" + vno + "";

                com = new MySqlCommand(q5, con);

                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[0].ToString();                    
                    ddv = dr[1].ToString();
                    TextBox3.Text = dr[2].ToString();
                    TextBox4.Text = dr[3].ToString();
                    DropDownList4.Text = dr[4].ToString();
                }

                con.Close();

                if (ddv == "Standard Cars")
                    DropDownList1.SelectedIndex = 0;
                else if (ddv == "Premium Cars")
                    DropDownList1.SelectedIndex = 1;
                else if (ddv == "Luxury Cars")
                    DropDownList1.SelectedIndex = 2;
                else if (ddv == "4 WD Vehicles")
                    DropDownList1.SelectedIndex = 3;
                else if (ddv == "Standard Vans")
                    DropDownList1.SelectedIndex = 4;
                else if (ddv == "Premium Vans")
                    DropDownList1.SelectedIndex = 5;
                else if (ddv == "Mini Coaches")
                    DropDownList1.SelectedIndex = 6;
                else if (ddv == "Luxury Busses")
                    DropDownList1.SelectedIndex = 7;


                Label1.Visible = false;

                Button1.Visible = false;
                Button2.Visible = false;

                TextBox1.Visible = true;                
                DropDownList1.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                Button3.Visible = true;
                Button4.Visible = true;
            
                gvbind();                

                if (searchVal_txt.Text != "")
                {
                    string q1 = "SELECT * FROM vehicle WHERE vname LIKE '%" + searchVal_txt.Text + "%'";

                    con.Open();

                    com = new MySqlCommand(q1, con);
                    da = new MySqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            searchVal_txt.Text = "";

            string selectedValue;

            selectedValue = Request.Form["MyRadioButton"];
            Label1.Text = selectedValue;

            if (Label1.Text == "")
            {
                Label1.Text = "Please select a Relevant Radio Button that You Want to Delete";
                Label1.Visible = true;
                gvbind();
            }
            else
            {
                int vno = Convert.ToInt32(Label1.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "Delete from vehicle where vno=" + vno + "";

                com = new MySqlCommand(q5, con);
                int x = com.ExecuteNonQuery();
                con.Close();

                if (x > 0)
                {                    
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Succesfully ! ! !')", true);
                }
                Label1.Visible = false;
                gvbind();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int vno = Convert.ToInt32(Label1.Text);
            string staa = DropDownList4.SelectedValue;

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q6 = "update vehicle set vname=@a,vtype=@b,rate_per_day_US_$=@c,excess_km_US_$=@d,status=@f where vno=@e ";

            com = new MySqlCommand(q6, con);

            com.Parameters.AddWithValue("@a", TextBox1.Text);            
            com.Parameters.AddWithValue("@b", DropDownList1.SelectedItem);
            com.Parameters.AddWithValue("@c", TextBox3.Text);
            com.Parameters.AddWithValue("@d", TextBox4.Text);
            com.Parameters.AddWithValue("@e", vno);
            com.Parameters.AddWithValue("@f", staa);
            

            int x = com.ExecuteNonQuery();
            con.Close();

            if (x > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
            }
            gvbind();

            Button1.Visible = true;
            Button2.Visible = true;

            TextBox1.Visible = false;            
            DropDownList1.Visible = false;
            DropDownList4.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button1.Visible = true;
            Button2.Visible = true;

            TextBox1.Visible = false;            
            DropDownList1.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            Button3.Visible = false;
            Button4.Visible = false;

            gvbind();
        }


        protected void SaveShopping_btn_Click(object sender, EventArgs e)
        {
            if(place_tbox.Text == "" || des_tbox.Text == "" || add_tbox.Text== "" || url_tbox.Text == "")
            {
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Fill All The fields to save')", true);
            }
                else
            {
            Controller.DBCon dbcon = new Controller.DBCon();

            string place, desc, addr, url;
            place = place_tbox.Text;
            desc = des_tbox.Text;
            addr = add_tbox.Text;
            url = url_tbox.Text;

            dbcon.ShoppingData(place, desc, addr, url);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New record Inserted')", true);
            Shopping_bind();

            place_tbox.Text = "";
            des_tbox.Text = "";
            add_tbox.Text = "";
            url_tbox.Text = "";
            }
            

            

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {            
            string query;

            query = "SELECT * FROM shopping";

            GridView2.PageIndex = e.NewPageIndex;
            gvwithpaging(GridView2, query);

            int pagenumber = GridView2.PageIndex + 1;
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {               
                e.Row.Cells[2].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[3].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[4].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[5].Attributes.Add("style", "word-wrap:break-word");
            }
        }


        protected void GridView2_RowCreated1(object sender, GridViewRowEventArgs e)
        {
            //change the index of columns and the value of Unit based on requirements
            this.GridView2.Columns[2].ItemStyle.Width = new Unit(150);
            this.GridView2.Columns[3].ItemStyle.Width = new Unit(700);
            this.GridView2.Columns[4].ItemStyle.Width = new Unit(300);
            this.GridView2.Columns[5].ItemStyle.Width = new Unit(300);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string selectedValue;

            selectedValue = Request.Form["MyRadioButton1"];
            Label4.Text = selectedValue;

            if (Label4.Text == "")
            {
                Label4.Text = "Please select a Relevant Radio Button that You Want to Edit";
                Label4.Visible = true;
                Shopping_bind();
            }
            else
            {
                int sno = Convert.ToInt32(Label4.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "select place, description, address, url from shopping where sno=" + sno + "";

                com = new MySqlCommand(q5, con);

                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    TextBox2.Text = dr[0].ToString();
                    TextBox6.Text = dr[1].ToString();
                    TextBox7.Text = dr[2].ToString();
                    TextBox5.Text = dr[3].ToString();
                }

                con.Close();

                Label4.Visible = false;

                Button5.Visible = false;
                Button6.Visible = false;

                TextBox2.Visible = true;
                TextBox7.Visible = true;
                TextBox5.Visible = true;
                TextBox6.Visible = true;
                Button7.Visible = true;
                Button8.Visible = true;

                Shopping_bind();                            
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label4.Visible = false;

            string selectedValue;

            selectedValue = Request.Form["MyRadioButton1"];
            Label4.Text = selectedValue;

            if (Label4.Text == "")
            {
                Label4.Text = "Please select a Relevant Radio Button that You Want to Delete";
                Label4.Visible = true;
                Shopping_bind();
            }
            else
            {

                int sno = Convert.ToInt32(Label4.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "Delete from shopping where sno=" + sno + "";

                com = new MySqlCommand(q5, con);
                int x = com.ExecuteNonQuery();
                con.Close();

                if (x > 0)
                {                  
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Succesfully ! ! !')", true);
                }
                Label4.Visible = false;
                Shopping_bind();

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            int sno = Convert.ToInt32(Label4.Text);

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q6 = "update shopping set place=@a,description=@b,address=@c,url=@d where sno=@e ";

            com = new MySqlCommand(q6, con);

            com.Parameters.AddWithValue("@a", TextBox2.Text);
            com.Parameters.AddWithValue("@b", TextBox6.Text);
            com.Parameters.AddWithValue("@c", TextBox7.Text);
            com.Parameters.AddWithValue("@d", TextBox5.Text);
            com.Parameters.AddWithValue("@e", sno);

            int x = com.ExecuteNonQuery();
            con.Close();

            if (x > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
            }
            Shopping_bind();


            Button5.Visible = true;
            Button6.Visible = true;

            TextBox2.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox5.Visible = false;
            Button7.Visible = false;
            Button8.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Button5.Visible = true;
            Button6.Visible = true;

            TextBox2.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox5.Visible = false;
            Button7.Visible = false;
            Button8.Visible = false;

            Shopping_bind();
        }

        protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string query;

            query = "SELECT * FROM feedback";

            GridView3.PageIndex = e.NewPageIndex;
            gvwithpaging(GridView3, query);

            int pagenumber = GridView3.PageIndex + 1;
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {              
                e.Row.Cells[1].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[2].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[3].Attributes.Add("style", "word-wrap:break-word");
                e.Row.Cells[4].Attributes.Add("style", "word-wrap:break-word");

            }
        }

        protected void GridView3_RowCreated(object sender, GridViewRowEventArgs e)
        {            
            this.GridView3.Columns[1].ItemStyle.Width = new Unit(150);
            this.GridView3.Columns[2].ItemStyle.Width = new Unit(150);
            this.GridView3.Columns[3].ItemStyle.Width = new Unit(150);
            this.GridView3.Columns[4].ItemStyle.Width = new Unit(600);
            this.GridView3.Columns[5].ItemStyle.Width = new Unit(125);
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row2 = (GridViewRow)GridView3.Rows[e.RowIndex];
            Label lbl_del_id = (Label)row2.FindControl("fno");
            con.Open();
            MySqlCommand com3 = new MySqlCommand("DELETE FROM feedback WHERE fno='" + GridView3.DataKeys[e.RowIndex].Value.ToString() + "'", con);
            com3.ExecuteNonQuery();
            con.Close();
            fdbk_bind();
        }

        protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string query;

            query = "SELECT * FROM country_codes";

            GridView4.PageIndex = e.NewPageIndex;
            gvwithpaging(GridView4, query);

            int pagenumber = GridView4.PageIndex + 1;


        }

        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
        }

        protected void GridView4_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (TextBox8.Text == "" || TextBox9.Text == "" )
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Fill All The fields to save')", true);
            }
            else
            {
                Controller.DBCon dbcon = new Controller.DBCon();

                string cntryname, cntrycode;
                cntryname = TextBox8.Text;
                cntrycode = TextBox9.Text;

                dbcon.CountryCodeData(cntryname, cntrycode);

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New record Inserted')", true);

                TextBox8.Text = "";
                TextBox9.Text = "";

                TextBox10.Text = "";
                Label10.Text = "";

                country_code_bind();
            }
        }


        protected void Button14_Click(object sender, EventArgs e)
        {
            Label9.Visible = false;
            string q1;

            if (TextBox10.Text == "")
            {
                q1 = "SELECT * FROM country_codes";
            }
            else
            {
                q1 = "SELECT * FROM country_codes WHERE country LIKE '%" + TextBox10.Text + "%'";
            }

            con.Open();

            com = new MySqlCommand(q1, con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();

            GridView4.DataSource = ds;
            GridView4.DataBind();

            if (GridView4.Rows.Count == 0)
            {
                Label10.Visible = true;
                Label11.Visible = false;
                Label8.Visible = false;

                Button10.Visible = false;
                Button11.Visible = false;
            }
            else
            {
                Label10.Visible = false;
                Button10.Visible = true;
                Button11.Visible = true;
            }            
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string selectedValue;

            selectedValue = Request.Form["MyRadioButton2"];
            Label9.Text = selectedValue;

            if (Label9.Text == "")
            {
                Label9.Text = "Please select a Relevant Radio Button that You Want to Edit";
                Label9.Visible = true;
                country_code_bind();
            }
            else
            {
                int ccno = Convert.ToInt32(Label9.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "select country, code from country_codes where ccno=" + ccno + "";

                com = new MySqlCommand(q5, con);

                dr = com.ExecuteReader();
                while (dr.Read())
                {
                    TextBox12.Text = dr[0].ToString();
                    TextBox13.Text = dr[1].ToString();

                }

                con.Close();


                Label9.Visible = false;

                Button10.Visible = false;
                Button11.Visible = false;

                TextBox12.Visible = true;
                TextBox13.Visible = true;

                Button12.Visible = true;
                Button13.Visible = true;

                country_code_bind();                

                if (TextBox10.Text != "")
                {
                    string q1 = "SELECT * FROM country_codes WHERE country LIKE '%" + TextBox10.Text + "%'";

                    con.Open();

                    com = new MySqlCommand(q1, con);
                    da = new MySqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    GridView4.DataSource = ds;
                    GridView4.DataBind();
                }
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label9.Visible = false;
            TextBox10.Text = "";

            string selectedValue;

            selectedValue = Request.Form["MyRadioButton2"];
            Label9.Text = selectedValue;

            if (Label9.Text == "")
            {
                Label9.Text = "Please select a Relevant Radio Button that You Want to Delete";
                Label9.Visible = true;
                country_code_bind();
            }
            else
            {
                int ccno = Convert.ToInt32(Label9.Text);

                Controller.DBCon dbcon = new Controller.DBCon();
                string constring = dbcon.constring;

                con = new MySqlConnection(constring);
                con.Open();

                string q5 = "Delete from country_codes where ccno=" + ccno + "";

                com = new MySqlCommand(q5, con);
                int x = com.ExecuteNonQuery();
                con.Close();

                if (x > 0)
                {                   
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted Succesfully ! ! !')", true);
                }
                Label9.Visible = false;
                country_code_bind();
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            int ccno = Convert.ToInt32(Label9.Text);

            Controller.DBCon dbcon = new Controller.DBCon();
            string constring = dbcon.constring;

            con = new MySqlConnection(constring);
            con.Open();

            string q6 = "update country_codes set country=@a,code=@b where ccno=@c ";

            com = new MySqlCommand(q6, con);

            com.Parameters.AddWithValue("@a", TextBox12.Text);
            com.Parameters.AddWithValue("@b", TextBox13.Text);
            com.Parameters.AddWithValue("@c", ccno);

            int x = com.ExecuteNonQuery();
            con.Close();

            if (x > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
            }
            country_code_bind();

            Button10.Visible = true;
            Button11.Visible = true;

            TextBox12.Visible = false;
            TextBox13.Visible = false;

            Button12.Visible = false;
            Button13.Visible = false;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Button10.Visible = true;
            Button11.Visible = true;

            TextBox12.Visible = false;
            TextBox13.Visible = false;

            TextBox10.Visible = false;

            Button12.Visible = false;
            Button13.Visible = false;

            country_code_bind();
        }

        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
        {            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                    
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            decimal d;
            string selectedValue;

            if (GridView5.Visible == true)
            {
                selectedValue = Request.Form["MyRadioButton"];
                Label13.Text = selectedValue;

                if (Label13.Text == "")
                {
                    Label13.Text = "Please select a Relevant Radio Button that You Want to Update";
                    Label13.Visible = true;
                }
                else
                {
                    int tid = Convert.ToInt32(Label13.Text);
                    DateTime status_date = DateTime.Now;

                    Controller.DBCon dbcon = new Controller.DBCon();
                    string constring = dbcon.constring;

                    con = new MySqlConnection(constring);
                    con.Open();
                    
                    string q5 = "update cus_tours set status='Y',status_date=@a where tid=" + tid + "";

                    com = new MySqlCommand(q5, con);

                    com.Parameters.AddWithValue("@a", status_date);

                    int x = com.ExecuteNonQuery();
                    con.Close();

                    if (x > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
                    }
                    con.Close();

                    Label13.Visible = false;

                    //relodedb();
                }
            }
            else if (GridView6.Visible == true)
            {
                selectedValue = Request.Form["MyRadioButton1"];
                Label14.Text = selectedValue;


                if (Label14.Text == "")
                {
                    Label14.Text = "Please select a Relevant Radio Button that You Want to Update";
                    Label14.Visible = true;
                }
                else
                {
                    Label14.Visible = false;
                }
                
                if (TextBox11.Text == "")
                {
                    Label16.Text = "Please Fill The Amount ! ! !";
                    Label16.Visible = true;
                }

                else if (!decimal.TryParse(TextBox11.Text, out d))
                {
                    Label16.Text = "Please Enter Valid Currency";
                    Label16.Visible = true;                  
                }

                else if (decimal.TryParse(TextBox11.Text, out d))
                {
                    Label16.Visible = false;
                }
               
                if ((Label14.Visible == false) && (decimal.TryParse(TextBox11.Text, out d)))
                {

                    int ctid = Convert.ToInt32(Label14.Text);
                    decimal act_budget = Convert.ToDecimal(TextBox11.Text);
                    DateTime status_date = DateTime.Now;

                    Controller.DBCon dbcon = new Controller.DBCon();
                    string constring = dbcon.constring;

                    con = new MySqlConnection(constring);
                    con.Open();
                    
                    string q5 = "update cus_customize_tours set act_budget=" + act_budget + ", status='Y',status_date=@a where ctid=" + ctid + "";

                    com = new MySqlCommand(q5, con);

                    com.Parameters.AddWithValue("@a", status_date);

                    int x = com.ExecuteNonQuery();
                    con.Close();

                    if (x > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
                        TextBox11.Text = "";
                    }
                    con.Close();

                    Label14.Visible = false;

                   // relodedb();
                }
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {

            string selectedValue;

            if (GridView5.Visible == true)
            {
                selectedValue = Request.Form["MyRadioButton"];
                Label13.Text = selectedValue;

                if (Label13.Text == "")
                {
                    Label13.Text = "Please select a Relevant Radio Button that You Want to Update";
                    Label13.Visible = true;
                }
                else
                {

                    int tid = Convert.ToInt32(Label13.Text);
                    DateTime status_date = DateTime.Now;

                    Controller.DBCon dbcon = new Controller.DBCon();
                    string constring = dbcon.constring;

                    con = new MySqlConnection(constring);
                    con.Open();


                    string q5 = "update cus_tours set status='N',status_date=@a where tid=" + tid + "";

                    com = new MySqlCommand(q5, con);

                    com.Parameters.AddWithValue("@a", status_date);

                    int x = com.ExecuteNonQuery();
                    con.Close();

                    if (x > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
                    }
                    con.Close();

                    Label13.Visible = false;

                    //relodedb();
                }
            }
            else if (GridView6.Visible == true)
            {
                selectedValue = Request.Form["MyRadioButton1"];
                Label14.Text = selectedValue;


                if (Label14.Text == "")
                {
                    Label14.Text = "Please select a Relevant Radio Button that You Want to Update";
                    Label14.Visible = true;
                }
                else
                {

                    int ctid = Convert.ToInt32(Label14.Text);
                    DateTime status_date = DateTime.Now;

                    Controller.DBCon dbcon = new Controller.DBCon();
                    string constring = dbcon.constring;

                    con = new MySqlConnection(constring);
                    con.Open();

                    string q5 = "update cus_customize_tours set act_budget=null, status='N',status_date=@a where ctid=" + ctid + "";

                    com = new MySqlCommand(q5, con);

                    com.Parameters.AddWithValue("@a", status_date);

                    int x = com.ExecuteNonQuery();
                    con.Close();

                    if (x > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Succesfully ! ! !')", true);
                    }
                    con.Close();

                    Label14.Visible = false;

                    //relodedb();
                }
            }
        }

        protected void GridView6_RowDataBound(object sender, GridViewRowEventArgs e)
        {           
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                   
                    e.Row.Attributes.Add("onmouseover", "self.MouseOverOldColor=this.style.backgroundColor;this.style.backgroundColor='#00CC99'");
                    e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=self.MouseOverOldColor");
                }
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {


            DropDownList2.SelectedIndex = -1;

            string jj = DropDownList3.SelectedValue;

            if (jj == "Fixed Tours")
            {

                using (MySqlCommand cmd = new MySqlCommand("Select * from cus_tours"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView5.DataSource = dt;
                            GridView5.DataBind();
                        }
                    }
                }
                

                Label12.Visible = false;

                Button17.Visible = true;
                Button18.Visible = true;

                GridView5.Visible = true;
                GridView6.Visible = false;
                DropDownList2.Enabled = true;
                TextBox4.Enabled = false;

            }
            else if (jj == "Customize Tours")
            {
                using (MySqlCommand cmd = new MySqlCommand("Select * from cus_customize_tours"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView6.DataSource = dt;
                            GridView6.DataBind();
                        }
                    }
                }
                //}

                Label12.Visible = false;

                Button17.Visible = true;
                Button18.Visible = true;
                DropDownList2.Enabled = true;
                GridView6.Visible = true;
                GridView5.Visible = false;
                TextBox4.Enabled = false;
            }
 
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
             string KK = DropDownList3.SelectedValue;
             string jj = DropDownList2.SelectedValue;

             TextBox14.Text = "";

             if (jj == "Confirmed" || jj == "Not Confirmed")
             {
                 TextBox4.Enabled = false;
                 Button15.Enabled = false;

                 string q = "";
                 if (KK == "Fixed Tours" && jj == "Confirmed")
                 {
                     q = "Select * from cus_tours where status='Y'";
                 }
                 else if (KK == "Fixed Tours" && jj == "Not Confirmed")
                 {
                     q = "Select * from cus_tours where status='N'";
                 }
                 else if (KK == "Customize Tours" && jj == "Confirmed")
                 {
                     q = "Select * from cus_customize_tours where status='Y'";
                 }
                 else if (KK == "Customize Tours" && jj == "Not Confirmed")
                 {
                     q = "Select * from cus_customize_tours where status='N'";
                 }

                 //using (MySqlCommand cmd = new MySqlCommand("Select * from cus_tours where status='Y'"))//'"++"'
                 using (MySqlCommand cmd = new MySqlCommand(q))//'"++"'
                 {
                     using (MySqlDataAdapter sda = new MySqlDataAdapter())
                     {
                         cmd.Connection = con;
                         sda.SelectCommand = cmd;
                         using (DataTable dt = new DataTable())
                         {
                             sda.Fill(dt);
                             if (KK == "Fixed Tours")
                             {
                                 GridView5.DataSource = dt;
                                 GridView5.DataBind();


                               

                             }
                             else if (KK == "Customize Tours")
                             {
                                 GridView6.DataSource = dt;
                                 GridView6.DataBind();
                             }
                         }
                     }
                 }

                 if (KK == "Fixed Tours")
                 {
                     GridView5.Visible = true;
                     GridView6.Visible = false;
                 }
                 else if (KK == "Customize Tours")
                 {
                     GridView6.Visible = true;
                     GridView5.Visible = false;
                 }
                           
             }
             else
             {
                 TextBox14.Enabled = true;
                 Button15.Enabled = true;
             }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            relodedb();
        }


        private void relodedb()
        {

            if (TextBox14.Text == "")
            {
                Label12.Text = "Please Fill Your  Search Keyword";
                Label12.Visible = true;
            }
            else
            {
                string q = "";

                if ((DropDownList3.SelectedIndex == 1) && (DropDownList2.SelectedIndex == 1))
                {
                    q = "Select * from cus_tours where tid ='" + TextBox14.Text + "'";
                    GridView5.Visible = true;
                }
                else if ((DropDownList3.SelectedIndex == 1) && (DropDownList2.SelectedIndex == 2))
                {
                    q = "Select * from cus_tours where uname like '%" + TextBox14.Text + "%'";
                    GridView5.Visible = true;
                }
                else if ((DropDownList3.SelectedIndex == 1) && (DropDownList2.SelectedIndex == 3))
                {
                    q = "SELECT * FROM cus_tours c INNER JOIN cus_master cm ON c.uname=cm.uname WHERE cm.email LIKE '%" + TextBox14.Text + "%'";
                    GridView5.Visible = true;
                }
                else if ((DropDownList3.SelectedIndex == 2) && (DropDownList2.SelectedIndex == 1))
                {
                    q = "Select * from cus_customize_tours where ctid = '" + TextBox14.Text + "'";
                    GridView6.Visible = true;
                }
                else if ((DropDownList3.SelectedIndex == 2) && (DropDownList2.SelectedIndex == 2))
                {
                    q = "Select * from cus_customize_tours where uname like '%" + TextBox14.Text + "%'";
                    GridView6.Visible = true;
                }
                else if ((DropDownList3.SelectedIndex == 2) && (DropDownList2.SelectedIndex == 3))
                {
                    q = "SELECT * FROM cus_customize_tours cc INNER JOIN cus_master cm ON cc.uname=cm.uname WHERE cm.email LIKE '%" + TextBox14.Text + "%'";
                    GridView6.Visible = true;
                }
               // q = "Select * from cus_tours";
                if (DropDownList3.SelectedIndex == 1)
                {

                    GridView6.Visible = false;

                    con.Open();
                    com = new MySqlCommand(q, con);
                    da = new MySqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    GridView5.DataSource = ds;
                    GridView5.DataBind();

                    if (GridView5.Rows.Count == 0)
                    {
                        Label12.Visible = true;

                        Button17.Visible = false;
                        Button18.Visible = false;
                    }
                    else
                    {
                        Label12.Visible = false;

                        Button17.Visible = true;
                        Button18.Visible = true;
                    }
                }
                else if (DropDownList3.SelectedIndex == 2)
                {
                    GridView5.Visible = false;

                    con.Open();
                    com = new MySqlCommand(q, con);
                    da = new MySqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    con.Close();

                    GridView6.DataSource = ds;
                    GridView6.DataBind();

                    if (GridView6.Rows.Count == 0)
                    {
                        Label12.Visible = true;

                        Button17.Visible = false;
                        Button18.Visible = false;
                    }
                    else
                    {
                        Label12.Visible = false;

                        Label15.Visible = true;
                        TextBox11.Visible = true;
                        Button17.Visible = true;
                        Button18.Visible = true;
                    }
                }
            }            
        }       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Button18.Visible = false;
            Button17.Visible = false;
            Button15.Enabled = false;

            Label15.Visible = false;
            Label16.Visible = false;
            Label14.Visible = false;
            Label13.Visible = false;
            Label12.Visible = false;

            TextBox11.Visible = false;

            TextBox14.Text = "";
            TextBox14.Enabled = false;

            DropDownList2.SelectedIndex = 0;
            DropDownList2.Enabled = false;

            DropDownList3.SelectedIndex = 0;

            GridView5.DataSource = null;
            GridView5.DataBind();
            GridView5.Visible = false;

            GridView6.DataSource = null;
            GridView6.DataBind();
            GridView6.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_types.aspx?user=" + uname);
        }

        protected void SignOut_btn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            Panel4.Visible = false;
            Panel5.Visible = false;
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = true;
            Panel5.Visible = false;
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = true;
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_types.aspx?user=" + uname);
        }

        protected void dropdownMenu1_Click(object sender, ImageClickEventArgs e)
        {

        }

    }
}
