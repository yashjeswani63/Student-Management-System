<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="UpdateProfileFaculty.aspx.cs" Inherits="SMS.UpdateProfileFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
    .auto-style1 {
        width: 47%;
        height: 442px;
        margin-left: 0px;
    }
    .auto-style2 {
                width: 424px
            }
            .auto-style3 {
                width: 424px;
                height: 37px;
            }
            .auto-style4 {
                height: 37px;
            }
            .auto-style5 {
                width: 424px;
                height: 38px;
            }
            .auto-style6 {
                height: 38px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <center>
<table class="auto-style1">
    <tr>
        <td colspan="2" style="font-size: large; font-family: 'Courier New', Courier, monospace; font-weight: bold; text-align: center;">Update Profile<br />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">First Name&nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Last Name</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Gender</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Years Of Experience</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Expertise</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">State</td>
        <td class="auto-style6">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="153px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">City</td>
        <td class="auto-style4">
            <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="152px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Location</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">LandMark</td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">PIN</td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>

</center>
</asp:Content>
