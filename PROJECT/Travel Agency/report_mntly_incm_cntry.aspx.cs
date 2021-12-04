using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using MySql.Data.MySqlClient;
using ControlFreak;
using Travel_Agency.Controller;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace Travel_Agency
{
    public partial class report_mntly_incm_cntry : System.Web.UI.Page
    {
        public string uname;
        
        public decimal tot = 0;
        public decimal tot1 = 0;
        public decimal tot2 = 0;
        public decimal tot3 = 0;

        public MySqlConnection con = null;
        public MySqlCommand com = null;
        public MySqlDataReader dr = null;
        public DataTable dt = null;
        public DataSet ds = null;
        public MySqlDataAdapter da = null;

        protected void Page_Load(object sender, EventArgs e)
        {       
            uname = Request["user"];
            Label6.Text = uname;

            if (!IsPostBack)
            {               
                DropDownList_Load();

                Label17.Text = "By Country";
                Label17.Visible = true;
            }

            DBCon db = new DBCon();
            con = new MySqlConnection(db.constring);
        }

        private void DropDownList_Load()
        {
            string q1 = "SELECT country FROM country_codes";

            DBCon dbcon = new DBCon();
            DataTable dt = new DataTable();
            dt = dbcon.fillddl(q1);
            dbcon.CloseCon();

            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "country";
            DropDownList1.DataValueField = "country";
            DropDownList1.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (startDate.Text == "")
            {
                Label10.Text = "Please Select Report of Month";
                Label10.Visible = true;
            }
            else if(DropDownList1.SelectedIndex==0)
            {
                Label10.Text = "Please Select a Country";
                Label10.Visible = true;
            }
            else
            {
                Label10.Visible = false;

                Label8.Text = startDate.Text.Substring(7);

                string month = startDate.Text.Substring(7);
                string year = startDate.Text.Substring(0, 4);


                if (Label8.Text == "January")
                    Label8.Text = year + "-01";
                else if (Label8.Text == "February")
                    Label8.Text = year + "-02";
                else if (Label8.Text == "March")
                    Label8.Text = year + "-03";
                else if (Label8.Text == "April")
                    Label8.Text = year + "-04";
                else if (Label8.Text == "May")
                    Label8.Text = year + "-05";
                else if (Label8.Text == "June")
                    Label8.Text = year + "-06";
                else if (Label8.Text == "July")
                    Label8.Text = year + "-07";
                else if (Label8.Text == "August")
                    Label8.Text = year + "-08";
                else if (Label8.Text == "September")
                    Label8.Text = year + "-09";
                else if (Label8.Text == "October")
                    Label8.Text = year + "-10";
                else if (Label8.Text == "November")
                    Label8.Text = year + "-11";
                else if (Label8.Text == "December")
                    Label8.Text = year + "-12";

                date_lbl.Text = startDate.Text;

                GridView1Binding();
                GridView2Binding();
                GridView3Binding();
                GridView4Binding();

                if ((GridView1.Visible == true) || (GridView2.Visible == true) || (GridView3.Visible == true) || (GridView4.Visible == true))
                {
                    Label24.Visible = false;
                }                
            } 
        }

        protected void Export_btn_Click(object sender, EventArgs e)
        {
            ExportPanel1.ExportType = ExportPanel.AppType.Excel;
            //switch (RadioButtonList1.SelectedValue.ToString())
            //{

            //    case "HTML":
            //        ExportPanel1.ExportType = ExportPanel.AppType.HTML;
            //        break;
            //    case "Excel":
            //        ExportPanel1.ExportType = ExportPanel.AppType.Excel;
            //        break;
            //    case "Word":
            //        ExportPanel1.ExportType = ExportPanel.AppType.Word;
            //        break;
            //    case "Powerpoint":
            //        ExportPanel1.ExportType = ExportPanel.AppType.PowerPoint;
            //        break;
            //    case "WordPerfect":
            //        ExportPanel1.ExportType = ExportPanel.AppType.WordPerfect;
            //        break;
            //}
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot = tot + Convert.ToDecimal(e.Row.Cells[3].Text);
                Total_lbl.Text = tot.ToString();
            }           
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot1 = tot1 + Convert.ToDecimal(e.Row.Cells[3].Text);
                Label15.Text = tot1.ToString();
            }
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot2 = tot2 + Convert.ToDecimal(e.Row.Cells[5].Text);
                Label20.Text = tot2.ToString();
            } 
          
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                   
                    e.Row.Cells[1].Width = new Unit("200px");                 
                }
            
        }

        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot3 = tot3 + Convert.ToDecimal(e.Row.Cells[5].Text);
                Label23.Text = tot3.ToString();
            } 
           
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                    
                    e.Row.Cells[1].Width = new Unit("200px");                 
                }            
        }

        private void GridView1Binding()
        {
            string country = DropDownList1.SelectedItem.ToString();

            con.Open();
            
            com = new MySqlCommand("SELECT c.tid AS 'Ref. No',c.main_category AS 'Main Package',c.sub_category AS 'Sub Package',c.budget AS 'Charge (US $)' FROM cus_tours c INNER JOIN cus_master cm ON c.uname=cm.uname WHERE c.status_date LIKE '" + Label8.Text + "%' AND c.status= 'Y' AND cm.country ='" + country + "' ", con);

            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();

                GridView1.Visible = true;
                
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Total_lbl.Visible = true;
                Label5.Visible = true;                
                Label12.Visible = true;

                Label9.Visible = true;

                date_lbl.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : "+country;
                Label17.Visible = true;

                Label24.Visible = false;
            }
            else
            {
                Total_lbl.Visible = false;
                Label5.Visible = false;
                Label12.Visible = false;

                GridView1.Visible = false;

                Label24.Text = "No Records Found";
                Label24.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;
                
            }
        }


        private void GridView2Binding()
        {
            string country = DropDownList1.SelectedItem.ToString();

            con.Open();
           
            com = new MySqlCommand("SELECT cc.ctid AS 'Ref. No',cc.duration AS 'Duration',cc.group_size AS 'No. of Peoples',cc.act_budget AS 'Charge (US $)' FROM cus_customize_tours cc INNER JOIN cus_master cm ON cc.uname=cm.uname WHERE cc.status_date LIKE '" + Label8.Text + "%' AND cc.status= 'Y' AND cm.country ='"+country+"'", con);

            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();

                GridView2.Visible = true;                

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Label15.Visible = true;
                Label14.Visible = true;
                Label13.Visible = true;
                
                Label9.Visible = true;
                date_lbl.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;

                Label24.Visible = false;
            }
            else
            {
                Label15.Visible = false;
                Label14.Visible = false;
                Label13.Visible = false;

                GridView2.Visible = false;

                Label24.Text = "No Records Found";
                Label24.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;                
            }
        }

        private void GridView3Binding()
        {
            string country = DropDownList1.SelectedItem.ToString();

            con.Open();
          
            com = new MySqlCommand("SELECT v.vno AS 'Vehicle No',v.vname AS 'Vehicle Name',COUNT(c.vno) AS 'No. of Vehicle Ordered',SUM(c.duration) AS 'No. of Days Ordered',v.rate_per_day_US_$ AS 'Rate Per Day (US $)',COUNT(c.vno)*SUM(c.duration)*v.rate_per_day_US_$ AS 'Charge (US $)' FROM vehicle v INNER JOIN cus_tours c ON v.vno=c.vno INNER JOIN cus_master cm ON c.uname=cm.uname WHERE (c.status_date LIKE '" + Label8.Text + "%' ) AND c.status='Y' AND cm.country='" + country + "' GROUP BY c.vno HAVING vno  ", con);

            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView3.DataSource = ds;
                GridView3.DataBind();

                GridView3.Visible = true;                

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Label20.Visible = true;
                Label19.Visible = true;
                Label18.Visible = true;
                
                Label9.Visible = true;
                date_lbl.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;

                Label24.Visible = false;
            }
            else
            {

                Label20.Visible = false;
                Label19.Visible = false;
                Label18.Visible = false;

                GridView3.Visible = false;

                Label24.Text = "No Records Found";
                Label24.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;               
            }
        }

        private void GridView4Binding()
        {
            string country = DropDownList1.SelectedItem.ToString();

            con.Open();
            
            com = new MySqlCommand("SELECT v.vno AS 'Vehicle No',v.vname AS 'Vehicle Name',COUNT(cc.vno) AS 'No. of Vehicle Ordered',SUM(cc.duration) AS 'No.Days Ordered',v.rate_per_day_US_$ AS 'Rate Per Day (US $)',COUNT(cc.vno)*SUM(cc.duration)*v.rate_per_day_US_$ AS 'Charge (US $)' FROM vehicle v INNER JOIN cus_customize_tours cc ON v.vno=cc.vno INNER JOIN cus_master cm ON cc.uname=cm.uname WHERE (cc.status_date LIKE '" + Label8.Text + "%') AND cc.status='Y' AND cm.country='" + country + "' GROUP BY cc.vno HAVING vno  ", con);

            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView4.DataSource = ds;
                GridView4.DataBind();

                GridView4.Visible = true;

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Label23.Visible = true;
                Label22.Visible = true;
                Label21.Visible = true;

                Label9.Visible = true;
                date_lbl.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;

                Label24.Visible = false;
            }
            else
            {

                Label23.Visible = false;
                Label22.Visible = false;
                Label21.Visible = false;

                GridView4.Visible = false;

                Label24.Text = "No Records Found";
                Label24.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label17.Text = "By Country : " + country;
                Label17.Visible = true;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("report_types.aspx?user=" + uname);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ExportGridToPDF();
        }

        private void ExportGridToPDF()
        {

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=report.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            ExportPanel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
            //ExportPanel1.HorizontalAlign =  HorizontalAlign.Center;
            ExportPanel1.DataBind();
        }
             
    }
}