<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 512px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="container">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            ID :</td>
        <td class="style1">
            <asp:Label ID="lblid" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Name :</td>
        <td class="style1">
            <asp:TextBox ID="txtname" runat="server" Enabled="False" Height="19px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Mobile No. :</td>
        <td class="style1">
            <asp:TextBox ID="txtmobile" runat="server" Enabled="False" Height="19px" 
                MaxLength="10"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Email ID :</td>
        <td class="style1">
            <asp:TextBox ID="txtemail" runat="server" Enabled="False" Height="19px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Usename :</td>
        <td class="style1">
            <asp:Label ID="lblusername" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style1">
            <asp:Button ID="btnedit" runat="server" onclick="btnedit_Click" Text="Edit" 
                Width="59px" />
&nbsp;<asp:Button ID="btnupdate" runat="server" onclick="btnupdate_Click" Text="Update" 
                Visible="False" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style1">
            <asp:Button ID="btnchangepassword" runat="server" Height="28px" 
                onclick="btnchangepassword_Click" Text="Change Password" Width="216px" />
        </td>
    </tr>
</table>
</asp:Content>

