<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile_management.aspx.cs" Inherits="DPDOX_profile_management" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html lang="en" class="no-js">
<head>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>Cupit | Account</title>
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
           

  <div class="container" >
          <div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading"> 
			    	<h3 class="panel-title"><%Response.Write(Session["a"]);%> <small>Hello</small></h3>
			 		</div>
			 		<div class="panel-body mx-auto" style="width: 200px;">
			   		</div>
			 		    <asp:Button ID="btn_preferences" runat="server" class="btn btn-info btn-block" Text="Profile Setting" OnClick="btn_preferencesClick" /><br /><br />
                        <asp:Button ID="btn_add" runat="server" class="btn btn-info btn-block" Text="Subcrption" OnClick="btn_add_Click" DISABLED/>  <br /><br />
                        <asp:Button ID="btn_wishlist" runat="server" class="btn btn-info btn-block" Text="Wishlist" OnClick="btn_wishlist_Click" />  <br /><br />
			 		    <asp:Button ID="btn_logout" runat="server" class="btn btn-info btn-block" Text="Logout" OnClick="btn_logout_Click" /> <br /><br />         
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>

</form>
<p> &nbsp;</p>
</body>
</html>
