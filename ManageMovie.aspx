﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageMovie.aspx.cs" Inherits="ManageMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div>
        <h1 style="text-align: center">
            Manage Movie Details</h1>
    </div>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td align="center" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                    GridLines="Horizontal" onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                    onrowupdating="GridView1_RowUpdating" Width="100%" 
                    onrowcancelingedit="GridView1_RowCancelingEdit">
                    <Columns>
                        <asp:TemplateField HeaderText="Poster">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <br />
                                <asp:Label ID="lbloldfilename" runat="server" Text='<%# Eval("photo") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" 
                                    ImageUrl='<%# "movieImages/"+Eval("photo") %>' Width="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="movieid" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="duration" HeaderText="Duration" />
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="language" HeaderText="Language" />
                        <asp:BoundField DataField="releasedate" DataFormatString="{0:dd-MMM-yyyy}" 
                            HeaderText="Release Date" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p align="center">
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    
</asp:Content>
