<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCity.aspx.cs" Inherits="AddCity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 62%;
            background-color: #000000;
        }
        .style2
        {}
        .style4
        {
            font-family: "Felix Titling";
            color: #FF9900;
        }
        .style5
        {
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <h1 style="text-align: center; font-family: 'Felix Titling'; color: #FF9900; text-decoration: underline; background-color: #000000;" 
            class="style2">
            add&nbsp; city&nbsp; DETAILS</h1>
    </div>
    <p style="background-color: #000000">
        &nbsp;</p>
    <p style="background-color: #000000">
        &nbsp;</p>
    <table align="center" class="style1">
        <tr>
            <td class="style4">
                <strong><span class="style5">City Name :</span></strong></td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" MaxLength="50" BackColor="#FF9900" 
                    CssClass="style5" ForeColor="Black"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="City Name Missing" ForeColor="Red" 
                    SetFocusOnError="True" CssClass="style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td bgcolor="Black">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td bgcolor="Black">
                <asp:Label ID="lblmsg" runat="server" CssClass="style5" 
                    Font-Names="Copperplate Gothic Bold" ForeColor="#FF9900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="Black" class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="ADD" 
                    BackColor="Black" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Felix Titling" ForeColor="#FF9900" Width="67px" />
            </td>
        </tr>
    </table>
    
</asp:Content>

