<%@ Page Title="" Language="C#" MasterPageFile="~/loginStudent.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SMS.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 47%;
            height: 442px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 492px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="font-size: large; font-family: 'Courier New', Courier, monospace; font-weight: bold; text-align: center;">Profile<br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UpdateProfile.aspx">Update Details</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Selected CourseID</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Course_ID") %>'></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mobile Number</td>
            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email ID</td>
            <td>
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">State</td>
            <td>
                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">City</td>
            <td>
                <asp:Label ID="Label7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Location</td>
            <td>
                <asp:Label ID="Label8" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">LandMark</td>
            <td>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PIN</td>
            <td>
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

    </center>
</asp:Content>
