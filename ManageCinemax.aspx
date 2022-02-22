<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageCinemax.aspx.cs" Inherits="ManageCinemax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="text-align: center">
        Manage Cinemax Details<br />
    </h1>
    <p style="text-align: left">
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                        onrowupdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Photo">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br />
                                    <asp:Label ID="lblfilename" runat="server" Text='<%# Eval("photo") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="imgphoto" runat="server" Height="100px" 
                                        ImageUrl='<%# "cinemaxImages/"+Eval("photo") %>' Width="100px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cinemax ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("cinemaxid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblcityid" runat="server" Text='<%# Eval("cityid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtaddress" runat="server" Text='<%# Eval("address") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone No.">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtphn" runat="server" Text='<%# Eval("phoneno") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblphn" runat="server" Text='<%# Eval("phoneno") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtemailid" runat="server" Text='<%# Eval("emailid") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblemailid" runat="server" Text='<%# Eval("emailid") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Pincode">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtpincode" runat="server" Text='<%# Eval("pincode") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblpincode" runat="server" Text='<%# Eval("pincode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <EditItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" 
                                        ImageUrl="~/images/save.gif" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" 
                                        ImageUrl="~/images/cross.gif" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" 
                                        ImageUrl="~/images/editbtn.gif" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" 
                                        ImageUrl="~/images/delete.gif" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    
</asp:Content>

