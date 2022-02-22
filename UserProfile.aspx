<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
        <td style="width: 313px">
            Name :</td>
        <td class="style1">
            <asp:TextBox ID="txtname" runat="server" Enabled="False" Height="19px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td style="width: 313px">
            Mobile No. :</td>
        <td class="style1">
            <asp:TextBox ID="txtmobile" runat="server" Enabled="False" Height="19px" 
                MaxLength="10"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td style="width: 313px">
            Email ID :</td>
        <td class="style1">
            <asp:TextBox ID="txtemail" runat="server" Enabled="False" Height="19px"></asp:TextBox>
        </td>
        </tr>
        <tr>
        <td style="width: 313px">
            Usename :</td>
        <td class="style1">
            <asp:Label ID="lblusername" runat="server"></asp:Label>
        </td>
        </tr>
        <tr>
        <td style="width: 313px">
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
        </tr>
        <tr>
        <td style="width: 313px">
            &nbsp;</td>
        <td class="style1">
&nbsp;<asp:ImageButton ID="btnedit" runat="server" Height="59px" 
                ImageUrl="~/images/28411400-edit-button-or-icon-change-correct-or-add-information-check-info-or-spelling.jpg" 
                onclick="ImageButton1_Click" Width="65px" />
            <asp:ImageButton ID="btnupdate" runat="server" Height="69px" 
                ImageUrl="~/images/updateButtonA122s-filtered.png" onclick="ImageButton2_Click" 
                Visible="False" Width="75px" />
        </td>
        </tr>
        <tr>
        <td style="width: 313px">
            &nbsp;</td>
        <td class="style1">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="59px" 
                ImageUrl="~/images/icon_changePassword.png" onclick="ImageButton3_Click" 
                Width="169px" />
        </td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

