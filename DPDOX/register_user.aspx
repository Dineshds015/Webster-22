<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register_user.aspx.cs" Inherits="DPDOX_DPDOX_Default2" %>

<!DOCTYPE html>

<html lang="en" class="no-js">
    <head>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="app_theme.css" rel="stylesheet" />
        <title>Cupit | Register</title>
        <link rel="icon" type="image/x-icon" href="Content/Design%20Images/tab_icon.png">
    </head>
    <body>
        <form id="form1" runat="server">

<nav class="navbar navbar-inverse" style="position:sticky; top:0; z-index: 100;">
  <div class="container-fluid">
   <div class="collapse navbar-collapse" id="myNavbar">
      <table><tr>
        <td><asp:ImageButton ID="btn_logo" runat="server" src="Content/Design%20Images/cupit.jpg" height="70" Width="110"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_home" runat="server" Text="Home" class="btn btn-secondary transparent-style mr-3" Onclick="btn_home_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_about" runat="server" Text="About" class="btn btn-secondary transparent-style mr-3 " Onclick="btn_about_Click" />&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_contact" runat="server" Text="Contact" class="btn btn-secondary transparent-style mr-3" Onclick="btn_contact_Click"/>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_project" runat="server" Text="Project" class="btn btn-secondary transparent-style mr-3" Onclick="btn_project_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:TextBox ID="txt_search" runat="server" Height="30" Width="400"></asp:TextBox>&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-secondary transparent-style mr-3" Onclick="btn_search_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:ImageButton ID="btn_img_location" runat="server" src="Content/Design%20Images/loc.png" Height="40" Width="40" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
        <td><asp:Button ID="btn_login" runat="server" Text="Login" class="btn btn-secondary transparent-style mr-3" Onclick="btn_login_Click" /></td>
      </tr></table>
    </div>
  </div>
</nav>
           
            
  <div class="container ">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title">User <small>register</small></h3>
			 			</div>
			 			<div class="panel-body">
			    		</div>
                        <asp:Panel ID="Panel1" runat="server">
			    			
			    					<div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Name" ID="txt_c_name" runat="server"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
                                        <asp:Label class="col-sm" ID="lbl_gender" runat="server" Text="Gender:" Font-Bold></asp:Label>
                                        <asp:RadioButton class="col-sm" Text="Male" ID="rb_male" GroupName="gender" runat="server" OnCheckedChanged="rb_male_onClick"/>
                                        <asp:RadioButton class="col-sm" Text="Female" ID="rb_female" GroupName="gender" runat="server" OnCheckedChanged="rb_female_onClick" />
                                        <asp:RadioButton class="col-sm" Text="Other" ID="rb_other" GroupName="gender" runat="server" OnCheckedChanged="rb_other_onClick" />
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Age (18+)" ID="txt_age" runat="server"></asp:TextBox>
			    					</div>
			    					<div class="form-group ">
                                        <asp:TextBox class="form-control input-sm" placeholder="Phone" ID="txt_c_phone" runat="server"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control input-sm" placeholder="Email" ID="txt_c_email" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="val_email" runat="server" ErrorMessage="Invalid Email Format" ForeColor="Red" ControlToValidate="txt_c_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			    					</div>
			    			    	<div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="Pincode" ID="txt_c_pin" runat="server"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
			                           <asp:DropDownList class="btn btn-light dropdown-toggle" ID="ddl_c_city" runat="server" Height="42px" style="margin-left: 0; margin-top: 25px" Width="321px" >
                                         <asp:ListItem Selected="True">City</asp:ListItem>
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
			                            <asp:TextBox class="form-control input-sm" placeholder="Password" ID="txt_c_password" runat="server" TextMode="Password"></asp:TextBox>
			    					</div>
                                    <div class="form-group">
			                            <asp:TextBox class="form-control input-sm" placeholder="Confirm Password" ID="txt_cc_password" runat="server" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="val_password" runat="server" ErrorMessage="Enter Correct Password" ControlToValidate="txt_cc_password" ControlToCompare="txt_c_password"></asp:CompareValidator>
			    					</div>
                                    <div class="form-group">
                                        <asp:FileUpload class="form-control input-sm" ID="fu_image" runat="server"/>
			    		            </div>
                                    <asp:Button ID="btn_register" runat="server" Text="Register" class="btn btn-info btn-block" OnClick="btn_signup_Click"/>
                            </asp:Panel>
                            <%--<asp:Panel ID="Panel2" runat="server">
                                <div class="form-group">
                                    <asp:TextBox class="form-control input-sm" placeholder="Enter OTP" ID="txt_otp" runat="server"></asp:TextBox>
			    				</div>
                                <asp:Button ID="btn_register" runat="server" Text="Sign up" class="btn btn-info btn-block" OnClick="btn_signup_Click"/>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>--%>

                

</form>
<p> &nbsp;</p>
</body>
</html>