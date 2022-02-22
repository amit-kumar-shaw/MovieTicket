<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserChangePassword.aspx.cs" Inherits="UserChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
            <td style="width: 239px">
                Old Password :</td>
            <td>
                <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Old Password is missing" ControlToValidate="txtold" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    <tr>
            <td style="width: 239px">
                New Password :</td>
            <td>
                <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="New Password is missing" ControlToValidate="txtnew" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    <tr>
            <td style="width: 239px">
                Confirm Password :</td>
            <td>
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Confirm Password is missing" ControlToValidate="txtconfirm" 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnew" ControlToValidate="txtconfirm" Display="Dynamic" 
                    ErrorMessage="Confirm Password not matching" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
    <tr>
            <td style="width: 239px">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    <tr>
            <td style="width: 239px">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="65px" 
                    ImageUrl="~/images/updateButtonA122s-filtered.png" onclick="ImageButton1_Click" 
                    Width="71px" />
            </td>
        </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 239px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

