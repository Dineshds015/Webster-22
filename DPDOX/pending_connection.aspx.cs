using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class DPDOX_pending_connection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("homepage.aspx");

        }
        if (!IsPostBack)
        {
            commentct();
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    private void commentct()
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT  * FROM tbl_customer E JOIN tbl_connection D USING (c_id)  where cn_email='" + Session["a"].ToString() + "' AND cn_status='Pending'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlc.DataSource = dt;
            dlc.DataBind();
            con.Close();
        }
    }
    protected void btn_home_Click(object sender, EventArgs e)
    {
        if (Session["a"] != null)
        {
            Response.Redirect("alhomepage.aspx");
        }
        else
        {
            Response.Redirect("homepage.aspx");
        }
    }
    protected void btn_about_Click(object sender, EventArgs e)
    {
        Response.Redirect("about_us.aspx");
    }
    protected void btn_contact_Click(object sender, EventArgs e)
    {
        Response.Redirect("contact_us.aspx");
    }
    protected void btn_project_Click(object sender, EventArgs e)
    {
        Response.Redirect("project.aspx");
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        Response.Write("btn_search_Click");
    }
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile_management.aspx");
    }
    protected void btn_img_noti_Click(object sender, EventArgs e)
    {
        Response.Redirect("notification.aspx");
    }
    protected void btn_img_location_Click(object sender, EventArgs e)
    {

    }
    protected void btn_connection_Click(object sender, EventArgs e)
    {
        Response.Redirect("connection.aspx");
    }
    protected void btn_post_Click(object sender, EventArgs e)
    {
        Response.Redirect("post.aspx");
    }
    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        MySqlConnection con = new MySqlConnection(constring);
        
        if (e.CommandName == "cancel")
        {
            string c_id = ((Label)e.Item.FindControl("lbl_cust_id")).Text;
            string cancel_con = "DELETE FROM tbl_connection WHERE cn_email='" + Session["a"].ToString() + "' AND c_id=" + c_id + "";
            MySqlCommand cmd1 = new MySqlCommand(cancel_con, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
            Response.Write("<script>alert('Connection requested !')</script>");
            Response.Redirect("pending_connection.aspx");
        }
    }
}