using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Security;


namespace Travel_Agency.reports
{
    public partial class report_types : System.Web.UI.Page
    {
        public string uname;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Sign out operation*/
            if (Page.User.Identity.IsAuthenticated)
            {

            }
            else
                FormsAuthentication.RedirectToLoginPage();


            uname = Request["user"];
            Label6.Text = uname;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("report_mntly_incm_fxd_tr.aspx?user=" + uname);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_mntly_incm_custmz_tr.aspx?user=" + uname);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Response.Redirect("report_mntly_incm_vehi.aspx?user=" + uname);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_mntly_incm_cntry.aspx?user=" + uname);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_cur_expct_incm_fxd_tr.aspx?user=" + uname);
           
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_cur_expct_incm_custmz_tr.aspx?user=" + uname);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_cur_inq_fxd_tr.aspx?user=" + uname);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_cur_inq_cstmz_tr.aspx?user=" + uname);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_vehi.aspx?user=" + uname);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_dly_cus_fdbk.aspx?user=" + uname);
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("report_reg_mem_cnt.aspx?user="+uname);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("adminNew.aspx?user=" + uname);
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}