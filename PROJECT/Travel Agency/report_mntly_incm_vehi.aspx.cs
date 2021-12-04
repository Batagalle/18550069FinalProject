﻿using System;
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
    public partial class report_mntly_incm_vehi : System.Web.UI.Page
    {
        public string uname;
        
        public decimal tot = 0;
        public decimal tot1 = 0;

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

            DBCon db = new DBCon();
            con = new MySqlConnection(db.constring);          
        }


        private void GridView1Binding()
        {           
                con.Open();
                            
                com = new MySqlCommand("SELECT v.vno AS 'Vehicle No',v.vname AS 'Vehicle Name',COUNT(c.vno) AS 'No. of Vehicle Ordered',SUM(c.duration) AS 'No. of Days Ordered',v.rate_per_day_US_$ AS 'Rate Per Day (US $)',COUNT(c.vno)*SUM(c.duration)*v.rate_per_day_US_$ AS 'Charge (US $)' FROM cus_tours c INNER JOIN vehicle v ON c.vno=v.vno WHERE (c.status_date LIKE '" + Label8.Text + "%') AND c.status='Y' GROUP BY c.vno HAVING vno ", con);
            
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
                    Label5.Visible = true;
                    Label12.Visible = true;
                    
                    Label9.Visible = true;
                    
                    date_lbl.Visible = true;
                    
                    Label11.Visible = true;
                    Label11.Text = "Report Date : " + DateTime.Now;
                }
                else
                {                                     
                    Label5.Visible = false;
                    Label12.Visible = false;
                                        
                    GridView1.Visible = false;
                    Label15.Visible = false;
                    Label15.Text = "";
                    Total_lbl.Visible = false;
                    
                }
            }


        private void GridView2Binding()
        {

            con.Open();

                                   
            com = new MySqlCommand("SELECT v.vno AS 'Vehicle No',v.vname AS 'Vehicle Name',COUNT(cc.vno) AS 'No. of Vehicle Ordered',SUM(cc.duration) AS 'No.Days Ordered',v.rate_per_day_US_$ AS 'Rate Per Day',COUNT(cc.vno)*SUM(cc.duration)*v.rate_per_day_US_$ AS 'Charge (US $)' FROM cus_customize_tours cc INNER JOIN vehicle v ON cc.vno=v.vno WHERE (cc.status_date LIKE '" + Label8.Text + "%') AND cc.status='Y' GROUP BY cc.vno HAVING vno  ", con);

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
            }
            else
            {           
                Label15.Visible = false;
                Label15.Text = "";
                
                Label14.Visible = false;
                Label13.Visible = false;
                
                GridView2.Visible = false;                
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
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (startDate.Text == "")
            {
                Label10.Text = "Please Select Report of Month";
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
                
                 if ((GridView1.Visible == false) && (GridView2.Visible == false))
                {
                    Label11.Visible = false;
                    Label9.Visible = false;
                    Label12.Visible = false;
                    Label5.Visible = false;
                    Total_lbl.Visible = false;
                    Label13.Visible = false;
                    Label14.Visible = false;
                    Label15.Visible = false;
                    date_lbl.Visible = false;

                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = false;
                    Label4.Visible = false;

                    Label10.Text = "No Records Found";
                    Label10.Visible = true;
                }

                 if ((GridView1.Visible == true) || (GridView2.Visible == true))
                 {                     
                     Label10.Visible = false;
                 }
            }            
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {                                
                if (e.Row.RowType == DataControlRowType.DataRow)
                {                   
                    tot = tot + Convert.ToDecimal(e.Row.Cells[5].Text);
                    Total_lbl.Text = tot.ToString();
                }           
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot1 = tot1 + Convert.ToDecimal(e.Row.Cells[5].Text);
                Label15.Text = tot1.ToString();
                
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
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
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