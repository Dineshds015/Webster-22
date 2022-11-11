<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_Default" %>

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
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/cupit.jpg" height="70" Width="110" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        
      </tr></table>
    </div>
  </div>
</nav>
</br>   

<div class="container text-center">
  <asp:Label ID="lbl" runat="server" Text="Your soulmate is waiting!" style="font-family:cursive; color:darkgray" Font-Size="X-Large" Font-Bold="false"></asp:Label>
    </br></br>
    <div class="container ">
        <div class="container  ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">User <small>login</small></h3>
			 			</div>
			 			<div class="panel-body mx-auto" style="width: 200px;">
			    		</div>
	        				<div class="form-group">
			                    <asp:TextBox class="form-control input-sm" placeholder="Username" ID="txt_c_email" runat="server"></asp:TextBox>
			    			</div>
			    	        <div class="form-group">
			                    <asp:TextBox class="form-control input-sm" placeholder="Password" ID="txt_c_password" runat="server" TextMode="Password"></asp:TextBox>
			    			</div>
			    		    <div class="form-group">
                                <asp:CheckBox ID="rememberme" runat="server"/>&nbsp Remember me
                            </div>
       		   		        <asp:Button ID="Button1" runat="server" class="btn btn-info btn-block" Text="Login" Onclick="btn_login_Click"/>
                            <asp:LinkButton ID="lb_hta" runat="server" OnClick="link_signup_Click">Don't have account?</asp:LinkButton>
                        </div>
	    		</div>
    		</div>
    	</div>
    </div>
  </div>
</div></br></br>
</div>
<footer class="container-fluid text-center">
  <asp:ImageButton ID="btn_img_facebook" runat="server" src="Content/Design%20Images/facebook.png" Height="40" Width="40" onClick="btn_fb_onClick"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
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



<%--<system.codedom>
    <compilers>
      <compiler language="c#;cs;csharp" extension=".cs" type="Microsoft.CodeDom.Providers.DotNetCompilerPlatform.CSharpCodeProvider, Microsoft.CodeDom.Providers.DotNetCompilerPlatform, Version=2.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" warningLevel="4" compilerOptions="/langversion:default /nowarn:1659;1699;1701" />
      <compiler language="vb;vbs;visualbasic;vbscript" extension=".vb" type="Microsoft.CodeDom.Providers.DotNetCompilerPlatform.VBCodeProvider, Microsoft.CodeDom.Providers.DotNetCompilerPlatform, Version=2.0.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" warningLevel="4" compilerOptions="/langversion:default /nowarn:41008 /define:_MYTYPE=\&quot;Web\&quot; /optionInfer+" />
    </compilers>
  </system.codedom>--%>