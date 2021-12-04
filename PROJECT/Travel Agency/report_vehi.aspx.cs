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
    public partial class report_vehi : System.Web.UI.Page
    {
        public string uname;

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

        private void GridViewAll()
        {
            vtype_Label.Text = "All Types";
            con.Open();
            com = new MySqlCommand("SELECT vno AS 'Vehicle No',vname AS 'Vehicle',vtype AS 'Type',rate_per_day_US_$ AS 'Rate per Day (US $)',excess_km_US_$ AS 'Rate per Excess km (US $)' FROM vehicle", con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Label5.Visible = false;
            }
            else
            {               
                Label5.Text = "No Record Found";
                Label5.Visible = true;

                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false; 
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            vtype_Label.Text = DropDownList1.SelectedItem.ToString();
            date_lbl.Text = DateTime.Now.ToString();
            GridView1Binding();
            if (DropDownList1.SelectedIndex == 0)
            {
                GridViewAll();
            }
            else
            {
                GridView1Binding();
            }
        }

        private void GridView1Binding()
        {
            con.Open();
            com = new MySqlCommand("SELECT vno AS 'Vehicle No',vname AS 'Vehicle',rate_per_day_US_$ AS 'Rate per Day (US $)',excess_km_US_$ AS 'Rate per Excess km (US $)' FROM vehicle WHERE vtype LIKE '" + DropDownList1.SelectedItem.ToString() + "'", con);
            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();

                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Label5.Visible = false;
            }
            else
            {                
                Label5.Text = "No Record Found";
                Label5.Visible = true;

                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false; 
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridViewAll();
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