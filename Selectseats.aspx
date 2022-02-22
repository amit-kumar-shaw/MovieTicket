<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Selectseats.aspx.cs" Inherits="Selectseats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
            ImageUrl="~/images/Proceed.png" onclick="ImageButton1_Click" Width="134px" />
        <br />
    </p>
    <table class="movies">
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/chairImages/rchair.jpg" />
&nbsp; - Booked Seats</td>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/chairImages/wchair.jpg" />
&nbsp;&nbsp; -&nbsp; Available Seats</td>
            <td style="width: 319px">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/chairImages/cchair.jpg" />
&nbsp;&nbsp; -&nbsp; Selected Seats</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 319px">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 319px">
                &nbsp;</td>
        </tr>
    </table>
    <table class="container">
        <tr>
            <td align="center">
                <table class="container" id="tbls" runat="server">
                    <tr>
                        <td colspan="14" style="font-size: large">
                            <strong>Platinum - </strong>Rs 150</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="p201" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p202" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p203" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="p204" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p205" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p206" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p207" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="p208" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p209" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p210" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="p101" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p102" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p103" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="p104" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p105" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p106" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p107" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="p108" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p109" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="p110" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="p101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="14" style="font-size: large; height: 18px;">
                            <strong>Gold - </strong>Rs 120</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g301" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g302" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g303" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                        </td>
                        <td style="height: 19px">
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g304" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g305" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g306" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g307" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                        </td>
                        <td style="height: 19px">
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g308" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g309" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td style="height: 19px">
                            <asp:ImageButton ID="g310" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="g201" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g202" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g203" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="g204" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g205" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g206" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g207" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="g208" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g209" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g210" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="g101" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g102" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g103" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="g104" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g105" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g106" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g107" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="g108" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g109" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="g110" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="g101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="14" style="font-size: large">
                            <strong>Silver - </strong>Rs 100</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="s401" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s402" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s403" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s404" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s405" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s406" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s407" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s408" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s409" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s410" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="s301" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s302" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s303" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s304" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s305" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s306" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s307" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s308" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s309" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s310" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ImageButton ID="s201" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s202" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s203" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s204" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s205" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s206" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s207" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:ImageButton ID="s208" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s209" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td>
                            <asp:ImageButton ID="s210" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s101" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s102" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s103" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s104" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s105" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s106" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s107" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                        </td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s108" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s109" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                        <td style="height: 18px">
                            <asp:ImageButton ID="s110" runat="server" ImageUrl="~/chairImages/wchair.jpg" 
                                onclick="s101_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                        <td style="height: 18px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="14" style="height: 18px">
                            <asp:Image ID="Image2" runat="server" Height="26px" 
                                ImageUrl="~/chairImages/screen.jpg" Width="567px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

