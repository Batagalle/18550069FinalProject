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
    public partial class report_cur_expct_incm_custmz_tr : System.Web.UI.Page
    {
        public string uname;
        public decimal tot = 0;

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
          
            date_lbl.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            GridView1Binding();
          
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        private void GridView1Binding()
        {
            string mnt = date_lbl.Text.Substring(0, 7);

            con.Open();

            com = new MySqlCommand("SELECT * FROM cus_customize_tours WHERE status_date LIKE '" + mnt + "%' AND STATUS= 'Y'", con);

            da = new MySqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);
            com.Dispose();
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();


                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;

                Total_lbl.Visible = true;
                Label5.Visible = true;

                Label7.Visible = false;

                Label8.Visible = true;
                date_lbl.Visible = true;

            }
            else
            {

                Label7.Text = "No Record Found";
                Label7.Visible = true;

                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;

                Total_lbl.Visible = false;
                Label5.Visible = false;

                Label8.Visible = false;
                date_lbl.Visible = false;                
            }
        }

        protected void Export_btn_Click(object sender, EventArgs e)
        {
            ExportPanel1.ExportType = ExportPanel.AppType.Excel;
            //switch (RadioButtonList1.SelectedValue.ToString())
            //{

                //case "HTML":
                //    ExportPanel1.ExportType = ExportPanel.AppType.HTML;
                //    break;
                //case "Excel":
                //    ExportPanel1.ExportType = ExportPanel.AppType.Excel;
                //    break;
                //case "Pdf":
                //    ExportPanel1.ExportType = ExportPanel.AppType.Word;
                //    break;
                //case "Powerpoint":
                //    ExportPanel1.ExportType = ExportPanel.AppType.PowerPoint;
                //    break;
                //case "WordPerfect":
                //    ExportPanel1.ExportType = ExportPanel.AppType.WordPerfect;
                //    break;

                   
            //}
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot = tot + Convert.ToDecimal(e.Row.Cells[4].Text);
                Total_lbl.Text = tot.ToString();
            }     
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("report_types.aspx?user=" + uname);
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
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