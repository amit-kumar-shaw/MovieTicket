<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="BookMovie.aspx.cs" Inherits="BookMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
        <br />
    </p>
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Movie :</td>
            <td>
                <asp:Label ID="lblmovie" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Select City :</td>
            <td>
        <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlcity_SelectedIndexChanged" Width="120px">
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Select Cinemax :</td>
            <td>
        <asp:DropDownList ID="ddlcinemax" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlcinemax_SelectedIndexChanged" Width="120px">
            <asp:ListItem>Select Cinemax</asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Select Date :</td>
            <td>
        <asp:DropDownList ID="ddldate" runat="server" AutoPostBack="True" Width="120px">
            <asp:ListItem>Select Day</asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Select Time :</td>
            <td>
        <asp:DropDownList ID="ddltime" runat="server" AutoPostBack="True" Width="130px">
            <asp:ListItem Value="Select">Select Showtime</asp:ListItem>
        </asp:DropDownList>
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
        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
            ImageUrl="~/images/book_button.png" onclick="ImageButton1_Click" 
            Width="108px" />
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

