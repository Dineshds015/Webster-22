using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class DPDOX_update_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a"] == null)
        {
            Response.Redirect("homepage.aspx");
        }
        if (!this.IsPostBack)
        {
            using (MySqlConnection con = new MySqlConnection(constring))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "select * from tbl_customer where c_email='" + Session["a"] + "'";
                cmd.Connection = con;
                
                using (MySqlDataReader msr = cmd.ExecuteReader())
                {
                    msr.Read();
                    txt_email.Text = msr["c_email"].ToString();
                    txt_c_name.Text = msr["c_name"].ToString();
                    txt_c_phone.Text = msr["c_phone"].ToString();
                    txt_c_pin.Text = msr["c_pin"].ToString();
                    ddl_c_city.SelectedValue = msr["city"].ToString();
                    txt_age.Text = msr["c_age"].ToString();
                }
                con.Close();
            }
        }
    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

    MySqlCommand cmd;
    MySqlDataAdapter da;
    DataSet ds;


    protected void btn_update_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "UPDATE tbl_customer SET c_name='" + txt_c_name.Text + "' , c_phone=" + txt_c_phone.Text + " , c_pin=" + txt_c_pin.Text + " , city='" + ddl_c_city.SelectedItem + "',c_age=" + txt_age.Text + " where c_email='" + Session["a"] + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("alhomepage.aspx");
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
    protected void btn_img_location_Click(object sender, EventArgs e)
    {
        Response.Write("Location");
    }
    protected void btn_account_Click(object sender, EventArgs e)
    {
        Response.Redirect("account.aspx");
        Response.Write("Hello  " + Session["a"]);
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Response.Write("logout done");
    }
    protected void btn_post_Click(object sender, EventArgs e)
    {
        Response.Redirect("post.aspx");
    }
    protected void btn_img_noti_Click(object sender, EventArgs e)
    {
        Response.Write("Notification");
    }
    protected void btn_delete_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "delete from tbl_customer where c_email='" + Session["a"] + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("homepage.aspx");
            con.Close();
        }
    }

    protected void ddl_c_city_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}