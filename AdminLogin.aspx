<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

 <head>
<title>Cinemax</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!--[if lt IE 7]>
<script type="text/javascript" src="js/ie_png.js"></script>
<script type="text/javascript">ie_png.fix('.png, .link1 span, .link1');</script>
<link href="css/ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>

    <style type="text/css">

        .style1
        {
            width: 56%;
        }
        .style2
        {
            font-size: large;
        }
    </style>
    <p>
        <br />
</p>
    
<p>
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="~/images/2000px-Cinemax.svg.png" Width="200px" />
    </p>
    <table align="center" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <strong>LOGIN</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        
    <form id="form1" runat=server>
        <tr>
            <td>
                Username :</td>
            <td>
                            <asp:TextBox ID="txtusername" runat="server" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Username is missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td>
                Password :</td>
            <td>
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="Password is missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            <asp:Button ID="btnlogin" runat="server" Text="Login" Width="116px" 
                    onclick="btnlogin_Click" />
            </td>
        </tr>
        </form>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
    </table>
    <div id="footer">
        <div class="left">
          <div class="right">
            <div class="footerlink">
              <p class="lf">Copyright &copy; 2010 <a href="#">Cinemax</a> - All Rights Reserved</p>
              <p class="rf">Design by <a href="">Developers</a></p>
              <div style="clear:both;"></div>
            </div>
          </div>
        </div>
      </div>
    </div>


