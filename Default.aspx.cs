using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class About_LearningCafe_Default : System.Web.UI.Page
{
    string CaptchaText;
    DataSet ds;
    String connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.IsSecureConnection)
        {
            string redirectUrl = Request.Url.ToString().Replace("https:", "http:");
            Response.Redirect(redirectUrl);
        }
        Session["Mid"] = "Aboutus";
        ds = verifyimage();

        if (ds.Tables.Count != 0)
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                imgcaptcha.ImageUrl = ds.Tables[0].Rows[0]["Captchaimageurl"].ToString();
                ViewState["CaptchaText"] = ds.Tables[0].Rows[0]["CaptchaText"].ToString();
            }
        }
        //Session["imagename"] = "lms_new_contactus.jpg";
        //pageid = Convert.ToString(Request.QueryString["pageid"]);

        //if (pageid == "1")
        //{           
        //    imgname = "lms_banner_aboutus2.jpg";
        //}
        //else if (pageid == "2")
        //{           
        //    imgname = "lms_new_contactus.jpg";
        //}
        //else if (pageid == "3")
        //{
        //    imgname = "lms_banner_2.jpg";
        //}
        //else if (pageid == "4")
        //{
        //    imgname = "lms_banner_cms.jpg";
        //}
        //else if (pageid == "5")
        //{
        //    imgname = "lms_banner_ECS.jpg";
        //}
        //else if (pageid == "6")
        //{
        //    imgname = "lms_banner_cts.jpg";
        //}
        //else if (pageid == "7")
        //{
        //    imgname = "lms_banner_os.jpg";
        //}
        //else if (pageid == "8")
        //{
        //    imgname = "lms_banner_op.jpg";
        //}
        //else
        //{
        //    imgname = "lms_banner_2.jpg";
        //}      

        //imgname = Session["imagename"].ToString();
        // imgbanner.ImageUrl = "../images/banners/" + imgname;
    }
    protected void btn_send_Click(object sender, EventArgs e)
    {
        Cls_feedback obj = new Cls_feedback();
        obj.Firstname = txt_name.Text;
        obj.EmailID = txt_email.Text;
        obj.Mobileno = txt_contactno.Text;
        obj.Feedback = txt_subject.Text;
        obj.Createdon = DateTime.Now;
        obj.InsertFeedback();

        txt_name.Text = "";
        txt_email.Text = "";
        txt_contactno.Text = "";
        txt_subject.Text = "";

        lbl_msg.Visible = true;
        lbl_msg.Text = "";
    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_email.Text = "";
        txt_contactno.Text = "";
        txt_subject.Text = "";
        txtcaptcha.Text = "";
        lbl_msg.Text = "";
    }

    DataSet verifyimage()
    {
        connection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(connection);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "sp_getImagerandom";
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();

        cmd.Dispose();
        return ds;

    }

}
