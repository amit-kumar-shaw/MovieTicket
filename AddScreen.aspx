<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddScreen.aspx.cs" Inherits="AddScreen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <h1 style="text-align: center">
            Add New Screen</h1>
        <p style="text-align: center">
            &nbsp;</p>
        <table align="center" cellspacing="1" class="style1">
            <tr>
                <td>
                    Select Cinemax :</td>
                <td>
                    <asp:DropDownList ID="ddlcinemax" runat="server" Width="125px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Screen Name :</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtname" ErrorMessage="Screen Name is missing" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Total Seats :</td>
                <td>
                    <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txttotal" ErrorMessage="Total Seats is missing" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Platinum Seats :</td>
                <td>
                    <asp:TextBox ID="txtplatinum" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Gold Seats :</td>
                <td>
                    <asp:TextBox ID="txtgold" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Silver Seats :</td>
                <td>
                    <asp:TextBox ID="txtsilver" runat="server"></asp:TextBox>
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
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    
</asp:Content>

