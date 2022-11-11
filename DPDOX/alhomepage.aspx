<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alhomepage.aspx.cs" Inherits="alhomepage" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="app_theme.css" rel="stylesheet" />
    <title>Homepage</title>
    <link rel="icon" type="image/x-icon" href="Content/Design%20Images/tab_icon.png">
</head>
<body>
<form id="form1" runat="server">

<nav class="navbar navbar-inverse" style="position:sticky; top:0; z-index: 100;">
  <div class="container-fluid">
   <div class="collapse navbar-collapse" id="myNavbar">
      <table><tr>
        <td><asp:ImageButton ID="img_logo" runat="server" src="Content/Design%20Images/cupit.jpg" height="70" Width="110"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:TextBox ID="txt_search" runat="server" Height="30" Width="400"></asp:TextBox>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-secondary transparent-style mr-3" Onclick="btn_search_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3" Onclick="btn_profile_Click"><%Response.Write(Session["a"]); %></asp:Button>&nbsp</td>
        <td><asp:Button ID="btn_connection" runat="server" Text="Connection" class="btn btn-primary transparent-style mr-3" Onclick="btn_connection_Click"/>&nbsp</td>
        <td><asp:ImageButton ID="btn_img_setting" runat="server" src="Content/Design%20Images/setting.png" Height="30" Width="30" Onclick="btn_img_setting_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_noti" runat="server" src="Content/Design%20Images/notification.jpg" Height="30" Width="25" Onclick="btn_img_noti_Click"/> &nbsp&nbsp&nbsp</td>
      </tr></table>
    </div>
  </div>
</nav>
</br>

<div class="container text-center">
  <div class="form-group">
    <asp:Label ID="lbl" runat="server" Text="Your soulmate is waiting!" style="font-family:cursive; color:darkgray" Font-Size="X-Large" Font-Bold="false"></asp:Label>
  </div>

</br></br>
    <div class="row" style="align-content:center;">
    <div class="col-sm-12">
          <div class="" style="background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%); box-shadow: 10px 5px 50px gray;">
          <div style="text-shadow:inherit;"><br /></div>
          <br />
          <div>
              <asp:Button ID="btn_discoverall" runat="server" Text="Discover All" Width="30%"  class="btn btn-warning" style=" box-shadow: inset 0px 0px 10px rgba(0,0,0,0.5);" OnClick="btn_discoverall_Click"/>
          </div><br />
          <div class="form-group">
              <asp:Label ID="lbl_or" runat="server" Text="OR" style="font-family:cursive; color:aliceblue;border-radius=50%" Font-Size="Medium"></asp:Label>
		  </div><br />
          <div class="form-group">
              <asp:Label ID="lbl_filter" runat="server" Text="Filter" style="font-family:cursive; color:aliceblue" Font-Size="Medium" Font-Bold="false"></asp:Label>
		  </div>
          <div class="form-group" >
                <asp:DropDownList class="btn btn-light dropdown-toggle" Font-Names="brush" Font-Size="Medium" ID="ddl_c_city" runat="server" Height="42px" style="margin-left: 0; margin-top: 25px" Width="321px" >
                    <asp:ListItem Selected="True">Location</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Jaipur</asp:ListItem>
                    <asp:ListItem>Jodhpur</asp:ListItem>
                    <asp:ListItem>Banglore</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                 </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label class="col-sm" ID="lbl_gender" runat="server" Text="Gender:" Font-Bold></asp:Label>
            <asp:RadioButton class="col-sm" Text="Male" Font-Names="brush" ID="rb_male" GroupName="gender" runat="server" OnCheckedChanged="rb_male_onClick"/>
            <asp:RadioButton class="col-sm" Text="Female" Font-Names="brush" ID="rb_female" GroupName="gender" runat="server" OnCheckedChanged="rb_female_onClick"/>
            <asp:RadioButton class="col-sm" Text="Other" Font-Names="brush" ID="rb_other" GroupName="gender" runat="server" OnCheckedChanged="rb_other_onClick"/>
         </div>
        <div class="form-group">
            <asp:Label class="col-sm" ID="lbl_age_limit"  runat="server" Text="Age Limit:" Font-Bold></asp:Label>
            <asp:TextBox class="input-sm form-group" Width="120" ID="txt_min_age" placeholder="Min" runat="server"></asp:TextBox> -
            <asp:TextBox class="input-sm form-group" Width="120" ID="txt_max_age" placeholder="Max" runat="server"></asp:TextBox>
		</div>
        <div>
            <asp:Button ID="btn_register" runat="server" Text="Discover" Width="30%"  class="btn btn-warning" style=" box-shadow: inset 0px 0px 10px rgba(0,0,0,0.5);" OnClick="btn_discover_Click"/>
        </div>
        <div><br /></div>
    </div>
    </div>
   </div>
<br />
<br />
<br />
<br />
<div class="container text-center"> 
  <div class="row">
      <table>
          <tr>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/delhi.jpg" Height="100px" Width="200px"/>
                           <div class="overlay">
                                <a class="info" href="display_city.aspx" >Delhi</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/jodhpur.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_jodhpur.aspx">Jodhpur</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/goa.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_goa.aspx">Goa</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/surat.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_surat.aspx">Surat</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/mumbai.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_mumbai.aspx">Mumbai</a>
                           </div>
                  </div>
              </td>
              <td>
                  <div class="hovereffect circle">
                        <asp:Image runat="server" src="Content/Design%20Images/shimla.jpg" Height="100px" Width="200px" />
                           <div class="overlay">
                                <a class="info" href="display_shimla.aspx">Shimla</a>
                           </div>
                  </div>
              </td>
          </tr>
      </table>
  </div>
</div></br></br>
      <div class="row col-sm-12" >
        <div class="col-sm-4" >
          <div class="well hovereffect" style="background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%); box-shadow: 10px 5px 50px gray;">
            <p><asp:Label ID="Label1"  style="font-family:'Times New Roman', Times, serif; color:black" Font-Size="X-Large" runat="server" Text="Spotlight" Font-Bold="true"></asp:Label></p>
            
            <p><asp:Label ID="Label2" runat="server" Text="1 Month"></asp:Label></p>
            <p><asp:Label ID="Label3" style="color:gray" Font-Size="Large" runat="server" Text="$10.99/Month"></asp:Label></p>
            <p><asp:Label ID="Label4" runat="server" Text="save 5%"></asp:Label></p>
            <p><asp:Label ID="Label5" runat="server" Text="likes"></asp:Label></p>
            <div class="overlay">
                <a class="info" href="homepage.aspx">Spotlight Plan </a>
                <p><asp:Image ID="ImageButton1" runat="server" src="Content/Design%20Images/Spotlight.png" Height="" Width=""/></p>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well hovereffect" style="background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%); box-shadow: 10px 5px 50px gray;">
            <p><asp:Label ID="Label6"  style="font-family:'Times New Roman', Times, serif; color:black" Font-Size="X-Large" runat="server" Text="Boost" Font-Bold="true"></asp:Label></p>
            <p><asp:Label ID="Label7" runat="server" Text="1 Week"></asp:Label></p>
            <p><asp:Label ID="Label8" style="color:gray" Font-Size="Large" runat="server" Text="$24.99/3 Month"></asp:Label></p>
            <p><asp:Label ID="Label9" runat="server" Text="save 35%"></asp:Label></p>
            <p><asp:Label ID="Label10" runat="server" Text="More views"></asp:Label></p>
            <div class="overlay">
                <a class="info" href="homepage.aspx">Boost Plan </a>
                <p><asp:Image ID="Image1" runat="server" src="Content/Design%20Images/Boost.png" Height="" Width=""/></p>
            </div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="well hovereffect" style="background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%); box-shadow: 10px 5px 50px gray;">
            <p><asp:Label ID="Label11"  style="font-family:'Times New Roman', Times, serif; color:black" Font-Size="X-Large" runat="server" Text="Spotlight" Font-Bold="true"></asp:Label></p>
            <p><asp:Label ID="Label12" runat="server" Text="Lifetime"></asp:Label></p>
            <p><asp:Label ID="Label13" style="color:gray" Font-Size="Large" runat="server" Text="$150.99/Lifetime"></asp:Label></p>
            <p><asp:Label ID="Label14" runat="server" Text="save 90% +"></asp:Label></p>
            <p><asp:Label ID="Label15" runat="server" Text="premium membership"></asp:Label></p>
            <div class="overlay">
                <a class="info" href="homepage.aspx">Lifetime Membership </a>
                <p><asp:Image ID="Image2" runat="server" src="Content/Design%20Images/Lifetime.png" Height="" Width=""/></p>
            </div>
          </div>
        </div>
      </div>
</div>
<br />
<br />
<footer class="container-fluid text-center" style="padding-bottom:0px; padding-top:10px;bottom:0;">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_twitter" runat="server" src="Content/Design%20Images/twitter.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_insta" runat="server" src="Content/Design%20Images/insta.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_email" runat="server" src="Content/Design%20Images/email.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_feed" runat="server" src="Content/Design%20Images/feed.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />
<p>DPDOX is a portal to meet with a partner .<br />
When a person feel aloneness and he/she always finds a partner to share with it convo.. this for helps for them.<br /><br />

@Copyright 2022-2023 by asp.Data. All Rights Reserved.<br />
CUPIT is powered by <b>DPDOX@mnnit</b></p>
</footer>
</form>
</body>
</html>



