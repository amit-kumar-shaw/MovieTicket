<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style2
    {
        font-size: xx-large;
        text-align: center;
    }
        .style3
        {
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style2">
     User&nbsp; Registration</p>
        &nbsp;<table class="container">
        <tr>
            <td>
                                Name:</td>
            <td>
                                <asp:TextBox ID="txtname" runat="server" 
                    style="margin-left: 0px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Name is missing" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td>
                Mobile No.:</td>
            <td>
                                <asp:TextBox ID="txtmobile" runat="server" style="margin-left: 0px" 
                                    Width="300px" MaxLength="10"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td>
                Email ID :</td>
            <td>
                                <asp:TextBox ID="txtemailid" runat="server" 
                                    ontextchanged="btnadd_Click" style="margin-left: 0px" 
                    Width="300px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemailid" ErrorMessage="EmailId is invalid" 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtemailid" ErrorMessage="EmailId is missing" 
                                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <strong>LOGIN INFO :</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Username :</td>
            <td>
                                            <asp:TextBox ID="txtusername" runat="server" style="margin-left: 0px" 
                                                Width="300px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtusername" ErrorMessage="Username is missing" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
        </tr>
        <tr>
            <td>
                Password :</td>
            <td>
                                            <asp:TextBox ID="txtpassword" runat="server" style="margin-left: 0px" 
                                                Width="300px" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtpassword" ErrorMessage="Password is missing" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
        </tr>
        <tr>
            <td>
                Confirm Password :</td>
            <td>
                                            <asp:TextBox ID="txtcpassword" runat="server" style="margin-left: 0px" 
                                                Width="300px" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtcpassword" ErrorMessage="Confirm Password is missing" 
                                                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                ControlToCompare="txtpassword" ControlToValidate="txtcpassword" 
                                                ErrorMessage="Confirm Password is not matching" ForeColor="Red" 
                                                Display="Dynamic"></asp:CompareValidator>
                                        </td>
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
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/images/submit.gif" onclick="ImageButton1_Click" />
                                            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                                            <asp:Label ID="lblmsg" runat="server" style="font-size: medium"></asp:Label>
                                        </td>
        </tr>
    </table>
    <br />
    <br />
           
</asp:Content>

