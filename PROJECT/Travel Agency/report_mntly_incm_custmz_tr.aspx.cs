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
    public partial class report_mntly_incm_custmz_tr : System.Web.UI.Page
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
        }

        private void GridView1Binding()
        {
            con.Open();
           
            com = new MySqlCommand("SELECT cc.ctid AS 'Ref. No',cc.duration AS 'Duration',cc.group_size AS 'No. of Peoples',cc.act_budget AS 'Charge (US $)' FROM cus_customize_tours cc WHERE cc.status_date LIKE '" + Label8.Text + "%' AND cc.status= 'Y' ", con);

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
                
                Label9.Visible = true;

                date_lbl.Visible = true;

                Label11.Visible = true;
                Label11.Text = "Report Date : " + DateTime.Now;

                Label10.Visible = false;
            }
            else
            {
                Label5.Visible = false;
                
                GridView1.Visible = false;
                Total_lbl.Visible = false;

                Label11.Visible = false;
                Label9.Visible = false;
                date_lbl.Visible = false;

                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;

                Label10.Text = "No Records Found";
                Label10.Visible = true;
            }
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