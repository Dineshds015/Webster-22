using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class DPDOX_connection : System.Web.UI.Page
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
        Response.Redirect("alhomepage.aspx");
    }
    
    protected void btn_pending_Click(object sender, EventArgs e)
    {
        Response.Redirect("pending_connection.aspx");
    }
    protected void btn_myconnection_Click(object sender, EventArgs e)
    {
        Response.Redirect("myconnection.aspx");
    }
    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        MySqlConnection con = new MySqlConnection(constring);
        if (e.CommandName == "reject")
        {
            string c_id = ((Label)e.Item.FindControl("lbl_cust_id")).Text;
            string update_rej = "UPDATE tbl_connection SET cn_status='Rejected' WHERE cn_email'" + Session["a"].ToString() + "' AND c_id=" + c_id + "";
            MySqlCommand cmd1 = new MySqlCommand(update_rej, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
            Response.Write("<script>alert('Liked')</script>");
        }
        if (e.CommandName == "approve")
        {
            //string cn_id = ((Label)e.Item.FindControl("lbl_cust_id")).Text;
            string update_app = "UPDATE tbl_connection SET cn_status='Approved' WHERE cn_email='" + Session["a"].ToString() + "'";
            MySqlCommand cmd1 = new MySqlCommand(update_app, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
            Response.Write("<script>alert('Connection requested !')</script>");
        }
    }
}