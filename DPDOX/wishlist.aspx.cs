using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class DPDOX_wishlist : System.Web.UI.Page
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
            MySqlCommand cmd = new MySqlCommand("SELECT  * FROM tbl_customer E JOIN tbl_wishlist D USING (c_id)  where w_email='" + Session["a"].ToString() + "'", con);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            dlc.DataSource = dt;
            dlc.DataBind();
            con.Close();
        }
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd2 = new MySqlCommand("select c_id from tbl_customer where c_email='" + Session["a"] + "'", con);
            cmd2.Parameters.AddWithValue("@c_id", lbl_cid);
            DataTable dt = new DataTable();
            dt.Load(cmd2.ExecuteReader());
            MySqlDataReader dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                lbl_cid.Text = dr["c_id"].ToString();
            }

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
    protected void btn_clearwishlist_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constring))
        {
            con.Open();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = "delete from tbl_wishlist where w_email='" + Session["a"] + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
        Response.Redirect("wishlist.aspx");
    }
    protected void dlc_ItemCommand(object source, DataListCommandEventArgs e)
    {
        MySqlConnection con = new MySqlConnection(constring);
        if (e.CommandName == "dislike")
        {
            string c_id = ((Label)e.Item.FindControl("lbl_cust_id")).Text;
            string dislike = "DELETE FROM tbl_wishlist WHERE c_id=" + c_id + " AND w_email='" + Session["a"].ToString() + "'";
            MySqlCommand cmd1 = new MySqlCommand(dislike, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
            Response.Write("<script>alert('Disiked')</script>");
        }
        if (e.CommandName == "connection")
        {
            string cnn_id = ((Label)e.Item.FindControl("lbl_cust_id")).Text;
            string cust_email = ((Label)e.Item.FindControl("lbl_cust_email")).Text;
            string insert_con = "INSERT INTO tbl_connection (cn_email,c_id,cn_status,cnn_id,con_email) VALUES ('" + cust_email.ToString() + "'," + lbl_cid.Text + ",'Pending'," + cnn_id + ",'" + Session["a"].ToString() + "')";
            MySqlCommand cmd1 = new MySqlCommand(insert_con, con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            dlc.EditItemIndex = -1;
            commentct();
            Response.Write("<script>alert('Connection requested !')</script>");
        }
    }
}