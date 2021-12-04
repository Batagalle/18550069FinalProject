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
    public partial class report_dly_cus_fdbk : System.Web.UI.Page
    {
        public string uname;
        public string q1;

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
            date_lbl.Text = DateTime.Now.ToString();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        private void GridView1Binding()
        {

            string country = DropDownList2.SelectedItem.ToString();

            if (DropDownList1.SelectedIndex == 0)
            {
                q1 = "SELECT f.uname as 'User Name',f.country as 'Country',c.`email` as 'E-mail',fdbk as 'Feedback' FROM feedback f INNER JOIN `cus_master` c WHERE f.`uname`= c.`uname` AND f.`date`= DATE(NOW())";
            }
            else if (DropDownList1.SelectedIndex == 1)
            {              
                q1 = "SELECT f.uname as 'User Name',c.`email` as 'E-mail',f.date as 'Date',fdbk as 'Feedback' FROM feedback f INNER JOIN `cus_master` c ON f.`uname`= c.`uname` WHERE f.country ='" + country + "' ";               
            }

            con.Open();

            com = new MySqlCommand(q1, con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                if (DropDownList1.SelectedIndex == 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();

                    GridView1.Visible = true;
                    GridView2.Visible = false;

                    Label10.Visible = true;
                    Label12.Visible = false;
                    Label11.Visible = false;

                    Label9.Visible = true;
                    date_lbl.Visible = true;
                    
                }
                else if (DropDownList1.SelectedIndex == 1)
                {
                    GridView2.DataSource = ds;
                    GridView2.DataBind();

                    GridView2.Visible = true;
                    GridView1.Visible = false;

                    Label12.Visible = true;
                    Label12.Text = "Report Date : " + DateTime.Now;

                    Label11.Visible = true;
                    Label11.Text = "By Country : " + DropDownList2.SelectedItem.ToString();

                    Label10.Visible = false;
                    Label9.Visible = false;
                    date_lbl.Visible = false;
                }
                
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                
                Label8.Visible = false;                
            }                      
            else
            {                
                Label8.Text = "No Records Found";
                Label8.Visible = true;

                Label9.Visible = false;
                date_lbl.Visible = false;
                
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;

                GridView1.Visible = false;
                GridView2.Visible = false;

                Label12.Visible = false;
                Label11.Visible = false;               
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                Label7.Visible = false;
                DropDownList2.Visible = false;
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                Label7.Visible = true;
                DropDownList2.Visible = true;

                DropDownList_Load();
            }
        }

        private void DropDownList_Load()
        {
            string q1 = "SELECT country FROM country_codes";

            DBCon dbcon = new DBCon();
            DataTable dt = new DataTable();
            dt = dbcon.fillddl(q1);
            dbcon.CloseCon();

            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "country";
            DropDownList2.DataValueField = "country";
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if ((DropDownList1.SelectedIndex == 1) && (DropDownList2.SelectedIndex == 0))
            {
                Label13.Text = "Please Select a Country";
                Label13.Visible = true;
            }
            else
            {
                Label13.Visible = false;
                GridView1Binding();
            }           
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (DropDownList2.Visible == false)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Cells[0].Width = new Unit("200px");
                    e.Row.Cells[1].Width = new Unit("250px");
                    e.Row.Cells[2].Width = new Unit("350px");
                    e.Row.Cells[3].Width = new Unit("1000px");                    
                }
            }
            else if (DropDownList2.Visible == true)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Cells[0].Width = new Unit("200px");
                    e.Row.Cells[1].Width = new Unit("300px");
                    e.Row.Cells[2].Width = new Unit("200px");
                    e.Row.Cells[3].Width = new Unit("1000px");                    
                }
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