using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DPDOX_profile_management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

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
    protected void btn_img_location_Click(object sender, EventArgs e)
    {
        Response.Write("Location");
    }
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile_management.aspx");
    }
    protected void btn_account_Click(object sender, EventArgs e)
    {
        Response.Redirect("account.aspx");
        Response.Write("Hello  " + Session["a"]);
    }
    protected void btn_id_Click(object sender, EventArgs e)
    {
        Response.Write("login.aspx");
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        Response.Redirect("update_profile.aspx");
    }
    protected void btn_profile_Click(object sender, EventArgs e)
    {
        Response.Write("logout done");
    }
    protected void btn_connection_Click(object sender, EventArgs e)
    {
        Response.Redirect("connection.aspx");
    }
    protected void btn_img_noti_Click(object sender, EventArgs e)
    {
        Response.Redirect("notification.aspx");
    }

    protected void btn_preferencesClick(object sender, EventArgs e)
    {
        Response.Redirect("update_profile.aspx");
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        Response.Redirect("my_post.aspx");
    }
    protected void btn_wishlist_Click(object sender, EventArgs e)
    {
        Response.Redirect("wishlist.aspx");
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["a"] = null;
        Response.Redirect("homepage.aspx");
    }
}