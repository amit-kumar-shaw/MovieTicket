<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddMovie.aspx.cs" Inherits="AddMovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            width: 70%;
        }
        .style2
        {
            font-family: "Felix Titling";
            font-weight: bold;
            color: #FF9900;
            background-color: #000000;
        }
        .style3
        {
            background-color: #000000;
        }
        .style5
        {
            font-family: "Copperplate Gothic Bold";
            font-weight: bold;
            background-color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align: center">
        Add New Movie</h1>
    <p>
        &nbsp;&nbsp;</p>
    
    <table align="center" cellspacing="1" class="style1">
        <tr>
            <td class="style2">
                    Name :</td>
            <td class="style3">
                <asp:TextBox ID="txtname" runat="server" BackColor="#FF9900" ForeColor="Black"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Field Empty" ForeColor="#FF9900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Duration :</td>
            <td class="style3">
                <asp:TextBox ID="txtduration" runat="server" BackColor="#FF9900" 
                    ForeColor="Black"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtduration" ErrorMessage="Field Empty" ForeColor="#FF9900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Description :</td>
            <td class="style3">
                <asp:TextBox ID="txtdescription" runat="server" BackColor="#FF9900" 
                    ForeColor="Black"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtdescription" ErrorMessage="Field Empty" 
                    ForeColor="#FF9900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Language :</td>
            <td class="style3">
                <asp:TextBox ID="txtlanguage" runat="server" BackColor="#FF9900" 
                    ForeColor="Black"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtlanguage" ErrorMessage="Field Empty" ForeColor="#FF9900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Release Date :</td>
            <td class="style3">
                <asp:DropDownList ID="ddlday" runat="server" BackColor="#FF9900" 
                    ForeColor="Black">
                    <asp:ListItem>Day</asp:ListItem>
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlmonth" runat="server" BackColor="#FF9900" 
                    ForeColor="Black">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem Value="01">Jan</asp:ListItem>
                    <asp:ListItem Value="02">Feb</asp:ListItem>
                    <asp:ListItem Value="03">Mar</asp:ListItem>
                    <asp:ListItem Value="04">Apr</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">Jun</asp:ListItem>
                    <asp:ListItem Value="07">Jul</asp:ListItem>
                    <asp:ListItem Value="08">Aug</asp:ListItem>
                    <asp:ListItem Value="09">Sep</asp:ListItem>
                    <asp:ListItem Value="10">Oct</asp:ListItem>
                    <asp:ListItem Value="11">Nov</asp:ListItem>
                    <asp:ListItem Value="12">Dec</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlyear" runat="server" BackColor="#FF9900" 
                    ForeColor="Black">
                    <asp:ListItem>Year</asp:ListItem>
                    <asp:ListItem>2015</asp:ListItem>
                    <asp:ListItem>2016</asp:ListItem>
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="ddlday" Display="Dynamic" ErrorMessage="Field Empty" 
                    ForeColor="#FF9900"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="ddlmonth" Display="Dynamic" ErrorMessage="Field Empty" 
                    ForeColor="#FF9900"></asp:RequiredFieldValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="ddlmonth" Display="Dynamic" ErrorMessage="Field Empty" 
                    ForeColor="#FF9900"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Status :</td>
            <td class="style3">
                <asp:RadioButtonList ID="rblstatus" runat="server" RepeatDirection="Horizontal" 
                        style="text-align: left" Font-Names="Felix Titling" 
                    ForeColor="#FF9900">
                    <asp:ListItem>Upcoming</asp:ListItem>
                    <asp:ListItem>Currently Running</asp:ListItem>
                    <asp:ListItem>Removed</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                    Photo :</td>
            <td class="style3">
                    <asp:FileUpload ID="filephoto" runat="server" BackColor="#FF9900" 
                        BorderColor="Black" BorderStyle="Double" CssClass="style5" 
                        ForeColor="Black" Width="191px" />
                </td>
        </tr>
        <tr>
            <td class="style3">
                    &nbsp;</td>
            <td class="style3">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF9900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                    &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="ADD" 
                    BackColor="Black" BorderColor="#FF9900" BorderStyle="Solid" Font-Bold="True" 
                    Font-Names="Felix Titling" ForeColor="#FF9900" Width="78px" />
            </td>
        </tr>
    </table>
    <div>
    </div>
    
</asp:Content>

