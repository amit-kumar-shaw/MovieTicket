<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Movies.aspx.cs" Inherits="Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
    <br />
</p>
<p style="font-size: x-large">
    Currently Running</p>
<p style="font-size: x-large">
    <asp:DataList ID="DataList1" runat="server" CellPadding="1" CellSpacing="1" 
        RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
        <ItemTemplate>
            <table cellpadding="2">
                <tr>
                    <td colspan="2">
                        <table cellpadding="10" cellspacing="5" class="container">
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="200px" 
                                        ImageUrl='<%# "movieImages/"+Eval("photo") %>' Width="200px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        &nbsp;
                        <asp:ImageButton ID="btnview" runat="server" 
                            CommandArgument='<%# Eval("movieid") %>' Height="30px" 
                            ImageUrl="~/images/view-button-png-md.png" onclick="btnview_Click" 
                            Width="82px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="btnbook" runat="server" Height="28px" 
                            ImageUrl="~/images/book_button.png" onclick="btnbook_Click" Width="89px" 
                            CommandArgument='<%# Eval("movieid") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</p>
<p style="font-size: x-large">
    Upcoming Movies</p>
<p style="font-size: x-large">
    <asp:DataList ID="DataList2" runat="server" CellPadding="1" CellSpacing="1" 
        RepeatColumns="4" RepeatDirection="Horizontal" Width="100%">
        <ItemTemplate>
            <table cellpadding="2">
                <tr>
                    <td>
                        <table cellpadding="10" cellspacing="5" class="container">
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="200px" 
                                        ImageUrl='<%# "movieImages/"+Eval("photo") %>' Width="200px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            CommandArgument='<%# Eval("movieid") %>' Height="37px" 
                            ImageUrl="~/images/view-button-png-md.png" onclick="ImageButton1_Click" 
                            Width="114px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

