<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
        &nbsp;</p>
    <p class="aligncenter" style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlcity" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlcity_SelectedIndexChanged" Width="120px">
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddlmovie" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlmovie_SelectedIndexChanged" Width="120px">
            <asp:ListItem>Select Movie</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddlcinemax" runat="server" AutoPostBack="True" 
            onselectedindexchanged="ddlcinemax_SelectedIndexChanged" Width="120px">
            <asp:ListItem>Select Cinemax</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddldate" runat="server" AutoPostBack="True" Width="120px">
            <asp:ListItem>Select Day</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:DropDownList ID="ddltime" runat="server" AutoPostBack="True" Width="130px">
            <asp:ListItem Value="Select">Select Showtime</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;
        &nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
            ImageUrl="~/images/book_button.png" onclick="ImageButton1_Click" 
            Width="108px" />
    </p>
    <p>
    </p>
    <table class="container">
        <tr>
            <td>
               
                <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big></big><br />
          </span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    
</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <table class="container">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/images/2000px-Cinemax.svg.png" Width="300px" />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/banner-img.png" 
                    Width="300px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/images.png" 
                    Width="300px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

