<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddShowtime.aspx.cs" Inherits="AddShowtime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <table cellpadding="2" cellspacing="0" class="style1">
            <tr>
                <td colspan="2" style="text-align: center" class="style2">
                    SHOW TIME</td>
            </tr>
            <tr>
                <td>
                    SELECT&nbsp; CITY :</td>
                <td>
                    <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcity_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlcity" ErrorMessage="City is missing" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SELECT CINEMAX :</td>
                <td>
                    <asp:DropDownList ID="ddlcinemax" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcinemax_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlcinemax" ErrorMessage="Cinemax is missing" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SELECT SCREEN :</td>
                <td>
                    <asp:DropDownList ID="ddlscreen" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlscreen_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="ddlscreen" ErrorMessage="Screen is missing" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SELECT MOVIE :</td>
                <td>
                    <asp:DropDownList ID="ddlmovie" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlmovie_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlmovie" ErrorMessage="Movie is missing" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    SELECT
                    SHOW TIME :</td>
                <td>
                    <asp:CheckBoxList ID="cbltime" runat="server">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="btnaddshow" runat="server" onclick="btnaddshow_Click" 
                        Text="ADD_SHOW" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
   
</asp:Content>

