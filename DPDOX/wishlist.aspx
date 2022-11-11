<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="DPDOX_wishlist" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="app_theme.css" rel="stylesheet" />
    <title>Cupit | Wishlist</title>
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
        <td><asp:ImageButton ID="btn_img_location" runat="server" src="Content/Design%20Images/loc.png" Height="40" Width="40" Onclick="btn_img_location_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><Button ID="btn_profile"class="btn btn-secondary transparent-style mr-3" Onclick="btn_profile_Click"><%Response.Write(Session["a"]); %></Button>&nbsp</td>
        <td><asp:Button ID="btn_connection" runat="server" Text="Connection" class="btn btn-primary transparent-style mr-3" Onclick="btn_connection_Click"/>&nbsp</td>
        <td><asp:ImageButton ID="btn_img_setting" runat="server" src="Content/Design%20Images/setting.png" Height="30" Width="30" Onclick="btn_img_setting_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_noti" runat="server" src="Content/Design%20Images/notification.jpg" Height="30" Width="25" Onclick="btn_img_noti_Click"/> &nbsp&nbsp&nbsp</td>
      </tr></table>
    </div>
  </div>
</nav>
<div class="container text-center">
  <asp:Label ID="lbl" runat="server" Text="Your soulmate is waiting!" style="font-family:cursive; color:darkgray" Font-Size="X-Large" Font-Bold="false"></asp:Label>
</div>
<div class="container text-center">
  <asp:Label ID="lbl_cid" runat="server" Text="Your soulmate is waiting!" style="font-family:cursive; color:mediumvioletred" Font-Size="X-Large" Font-Bold="false" Visible="false"></asp:Label>
</div>
<div class="container">
  <table width="100%">
      <tr>
          <td><asp:Button ID="btn_approved" runat="server" Text="Clear Wishlist" class="btn btn-warning transparent-style mr-3" OnClick="btn_clearwishlist_Click" Width="100%"/></td>
      </tr>
  </table>
</div>

<div class="container"><center>
<asp:DataList ID="dlc" runat="server" RepeatColumns="1" CellPadding="4"  ItemStyle-BorderWidth="50" ItemStyle-BorderColor="White" ForeColor="#333333" OnItemCommand="dlc_ItemCommand">
        
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
<ItemStyle BorderColor="White" BorderWidth="50px" BackColor="#F7F6F3" ForeColor="#333333"></ItemStyle>
        
        <ItemTemplate >
            <table border="0"  style="">
                <tr>
                    <td rowspan="5" Height="150px" Width="300px" style="background-color:antiquewhite; filter-blur:5px; box-shadow: inset 0px 0px 50px rgba(0,0,0,0.5); border-radius:"20px"; align="center";  "><asp:Image ID="img_c_image" style=" box-shadow: inset 0px 0px 10px rgba(0,0,0,0.5);" runat="server" ImageUrl='<%#Eval("c_dp") %>' Type="String" Height="150px" Width="140px" AlternateText="Picture not found"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                    <td><asp:Label ID="lbl_email" runat="server" Text='<%#Eval("c_email") %>' Visible="False"></asp:Label></td>
                </tr>
                <tr><td>Name</td><td>:&nbsp</td>  <td><asp:Label ID="lbl_c_name" runat="server" Text='<%#Eval("c_name") %>'></asp:Label>  </td></tr>
                
                <tr><td>Gender</td><td>:&nbsp</td><td><asp:Label ID="lbl_p_pin" runat="server" Text='<%#Eval("c_gender") %>'></asp:Label></td></tr>
                <tr><td>City</td><td>:&nbsp</td><td><asp:Label ID="lbl_city" runat="server" Text='<%#Eval("city") %>'></asp:Label></td></tr>
                <tr><td>c_pin</td><td>:&nbsp</td><td><asp:Label ID="lbl_p_features" runat="server" Text='<%#Eval("c_pin") %>' Width="300"></asp:Label></td></tr>
                <tr><td><asp:Button ID="btn_dislike" runat="server" Text="Dislike" class="btn btn-secondary shadow" height="40" Width="300" Font-Bold="True" Font-Size="Medium" CommandName="dislike"/></td>
                    <td colspan="3"><asp:Button ID="btn_connect" runat="server" Text="Connect +" class="btn btn-primary shadow" height="40" Width="100%" Font-Bold="True" Font-Size="Medium" CommandName="connection"/>  </td>
                </tr>
                </tr>
            </table>
            <table>
                <tr>
                    <td><asp:Label ID="lbl_cust_id" runat="server" Text='<%#Eval("c_id")%>' Visible="false"></asp:Label></td>
                    <td><asp:Label ID="lbl_cust_email" runat="server" Text='<%#Eval("c_email")%>' Visible="false"></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</div> 
</br></br>
<footer class="container-fluid text-center" style="padding-bottom:0px; padding-top:10px;bottom:0;">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_twitter" runat="server" src="Content/Design%20Images/twitter.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_insta" runat="server" src="Content/Design%20Images/insta.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_email" runat="server" src="Content/Design%20Images/email.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <asp:ImageButton ID="btn_img_feed" runat="server" src="Content/Design%20Images/feed.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />
<p>DPDOX is a portal to meet with a partner .<br />
When a person feel aloneness and he/she always finds a partner to share with it convo.. this for helps for them.<br /><br />

@Copyright 2022-2023 by asp.Data. All Rights Reserved.<br />
CUPIT is powered by <b>DPDOX@mnnit</b></p>
</footer>
</form>
</body>
</html>