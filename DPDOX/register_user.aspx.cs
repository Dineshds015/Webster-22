using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net;
using System.Data.SqlClient;
using System.Collections.Specialized;

public partial class DPDOX_DPDOX_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    MySqlCommand cmd;
    MySqlDataAdapter da;
    DataSet ds;

    protected void btn_home_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
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
    protected void imgbtn_location_Click(object sender, EventArgs e)
    {
        Response.Write("imgbtn_location_Click");
    }
    protected void btn_account_Click(object sender, EventArgs e)
    {
        Response.Write("btn_account_Click");
    }
    string Gender;
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            string str = fu_image.FileName;
            fu_image.PostedFile.SaveAs(Server.MapPath("fu//" + fu_image.FileName));
            string path = "" + str.ToString();
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            //cmd.CommandText = "INSERT INTO tbl_customer VALUES (2, 'shravan', 6353649008, 'shravanss015@gmail.com',395010, 'surat')";
            cmd.CommandText = "INSERT INTO tbl_customer (c_name,c_phone,c_gender,c_email,c_pin,city,c_pass,c_date,c_age,c_dp) VALUES ('" + txt_c_name.Text + "'," + txt_c_phone.Text + ",'" + Gender + "','" + txt_c_email.Text + "'," + txt_c_pin.Text + ",'" + ddl_c_city.SelectedItem.ToString() + "','" + txt_c_password.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "','"+ txt_age.Text + "','" + "fu/"+fu_image.FileName.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("homepage.aspx");
            con.Close();
        }
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
}