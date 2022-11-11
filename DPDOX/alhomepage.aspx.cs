using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class alhomepage : System.Web.UI.Page
{
    string Gender;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("homepage.aspx");
            
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
    protected void btn_discover_Click(object sender, EventArgs e)
    {
        Response.Redirect("display.aspx?min_age=" + txt_min_age.Text+"&max_age="+ txt_max_age.Text + "&location="+ ddl_c_city.SelectedItem.ToString() + "&gender="+Gender);
        //Response.Redirect("display.aspx?max_age=" + txt_max_age.Text);
        //Response.Redirect("SecondForm.aspx?location=" + ddl_c_city.SelectedItem.ToString());
        //Response.Redirect("SecondForm.aspx?gender=" + Gender);
    }
    protected void rb_male_onClick(object sender, EventArgs e)
    {
        Gender = "Male";
    }
    protected void rb_female_onClick(object sender, EventArgs e)
    {
        Gender = "Female";
    }
    protected void rb_other_onClick(object sender, EventArgs e)
    {
        Gender = "Other";
    }
    protected void btn_about_Click(object sender, EventArgs e)
    {
        Response.Redirect("about_us.aspx");
    }
    protected void btn_profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("update_profile.aspx");
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
        Response.Redirect("search.aspx");
    }
    protected void btn_img_location_Click(object sender, EventArgs e)
    {
        Response.Write("Location");
    }
    protected void btn_discoverall_Click(object sender, EventArgs e)
    {
        Response.Redirect("display.aspx");
    }
    protected void btn_connection_Click(object sender, EventArgs e)
    {
        Response.Redirect("connection.aspx");
    }
    protected void btn_img_setting_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile_management.aspx");
    }
    protected void btn_lda(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void btn_img_noti_Click(object sender, EventArgs e)
    {
        Response.Redirect("notification.aspx");
    }
    protected void link_hma_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_home_ahmedabad.aspx");
    }
    protected void link_hms_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_home_surat.aspx");
    }
    protected void link_hmg_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_home_goa.aspx");
    }
    protected void link_hmd_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_home_delhi.aspx");
    }
    protected void link_hmj_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_home_jodhpur.aspx");
    }
    protected void link_hta_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_hostel_ahmedabad.aspx");
    }
    protected void link_hts_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_hostel_surat.aspx");
    }
    protected void link_htg_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_hostel_goa.aspx");
    }
    protected void link_htd_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_hostel_delhi.aspx");
    }
    protected void link_htj_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_hostel_jodhpur.aspx");
    }
    protected void link_ba_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_books_ahmedabad.aspx");
    }
    protected void link_bs_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_books_surat.aspx");
    }
    protected void link_bg_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_books_goa.aspx");
    }
    protected void link_bd_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_books_delhi.aspx");
    }
    protected void link_bj_Click(object sender, EventArgs e)
    {
        Response.Redirect("display_books_jodhpur.aspx");
    }
}