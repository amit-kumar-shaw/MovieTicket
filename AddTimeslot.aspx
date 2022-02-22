<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddTimeslot.aspx.cs" Inherits="AddTimeslot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-weight: 700; font-size: xx-large; text-align: center">
        Add Time Slot<br />
    </p>
    <table class="style1">
        <tr>
            <td>
                Cinemax ID :</td>
            <td>
                <asp:DropDownList ID="ddlcinemaxid" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlcinemaxid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ddlcinemaxid" ErrorMessage="Cinemax is missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Screen ID :</td>
            <td>
                <asp:DropDownList ID="ddlscreenid" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlscreenid" ErrorMessage="Screen Id is missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Time Slot :</td>
            <td>
                <asp:TextBox ID="txttimeslot" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txttimeslot" ErrorMessage="Time Slot is missing" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
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
    </table>
</asp:Content>

