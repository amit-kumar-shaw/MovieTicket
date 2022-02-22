<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCinemax.aspx.cs" Inherits="AddCinemax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            font-family: "Felix Titling";
            color: #FF9900;
        }
        .style1
        {
            width: 70%;
            height: 300px;
        }
        .style8
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            color: #FF9900;
            text-align: left;
        }
        .style6
        {
            width: 417px;
            text-align: left;
        }
        .style5
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style3
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            color: #FF9900;
        }
        .style7
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            color: #FF9900;
            width: 417px;
            text-align: left;
        }
        .style9
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            color: #FF9900;
            text-align: left;
            height: 46px;
        }
        .style10
        {
            width: 417px;
            text-align: left;
            height: 46px;
        }
        .style11
        {
            font-family: "Felix Titling";
            font-weight: bold;
            color: #FF9900;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="background-color: #000000">
        <h1 style="text-align: center">
            &nbsp;</h1>
        <p style="text-align: center">
            &nbsp;</p>
        <h1 style="text-align: center; text-decoration: underline;" class="style4">
            ADD&nbsp; CINEMAX&nbsp; OUTLETS</h1>
        <p style="text-align: center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;</p>
        <table cellspacing="1" class="style1" align="center" width="60%">
            <tr>
                <td class="style11" width="30%">
                    CITY&nbsp; ID :</td>
                <td class="style6">
                    <asp:DropDownList ID="ddlcityid" runat="server" Height="21px" Width="176px" 
                        CssClass="style3" BackColor="#FF9900" ForeColor="Black">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="ddlcityid" ErrorMessage="City ID Missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    CINEMAX&nbsp; NAME:</td>
                <td class="style6">
                    <asp:TextBox ID="txtname" runat="server" BackColor="#FF9900" CssClass="style5" 
                        ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="Name missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    ADDRESS :</td>
                <td class="style6">
                    <asp:TextBox ID="txtaddress" runat="server" MaxLength="50" BackColor="#FF9900" 
                        CssClass="style5" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtaddress" ErrorMessage="Address Missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    PHONE&nbsp; NO. :</td>
                <td class="style6">
                    <asp:TextBox ID="txtphn" runat="server" MaxLength="10" BackColor="#FF9900" 
                        CssClass="style5" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtphn" ErrorMessage="Phone No. Missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    EMAIL&nbsp; ID :</td>
                <td class="style6">
                    <asp:TextBox ID="txtemailid" runat="server" MaxLength="50" BackColor="#FF9900" 
                        CssClass="style5" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtemailid" ErrorMessage="Email ID Missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    PHOTO :</td>
                <td class="style6">
                    <asp:FileUpload ID="filephoto" runat="server" BackColor="#FF9900" 
                        BorderColor="Black" BorderStyle="Double" CssClass="style5" 
                        ForeColor="Black" Width="191px" />
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    PINCODE :</td>
                <td class="style6">
                    <asp:TextBox ID="txtpincode" runat="server" MaxLength="6" BackColor="#FF9900" 
                        CssClass="style5" ForeColor="Black"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtpincode" ErrorMessage="Pincode Missing" ForeColor="Red" 
                        SetFocusOnError="True" CssClass="style3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11" width="30%">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" width="30%">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="lblmsg" runat="server" CssClass="style3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9" width="30%">
                    </td>
                <td class="style10">
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="ADD" 
                        BackColor="Black" BorderStyle="Solid" CssClass="style3" Height="26px" 
                        Width="126px" Font-Bold="True" Font-Names="Felix Titling" />
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>

