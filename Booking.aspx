<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p class="alignright">
        Hello,
        <asp:Label ID="lblusername" runat="server"></asp:Label>
        <br />
    </p>
    <p style="font-size: large">
        <strong>BOOKING DETAILS</strong></p>
    <table class="container">
        <tr>
            <td>
                Movie :</td>
            <td>
                <asp:Label ID="lblmovie" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                City :</td>
            <td>
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Cinemax :</td>
            <td>
                <asp:Label ID="lblcinemax" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Show Date :</td>
            <td>
                <asp:Label ID="lbldate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Show Time :</td>
            <td>
                <asp:Label ID="lbltime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Total Seats :</td>
            <td>
                <asp:Label ID="lblseats" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Total Price :</td>
            <td>
                <asp:Label ID="lblprice" runat="server"></asp:Label>
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
                <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                    ImageUrl="~/images/ticket_button.gif" Width="142px" 
                    onclick="ImageButton1_Click" />
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
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

