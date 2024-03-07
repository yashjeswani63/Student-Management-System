<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="ProfileFaculty.aspx.cs" Inherits="SMS.ProfileFaculty" %>
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
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UpdateProfileFaculty.aspx">Update Details</asp:LinkButton>
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
        <td class="auto-style2">Years Of Experience</td>
        <td>
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Expertise</td>
        <td>
            <asp:Label ID="Label12" runat="server"></asp:Label>
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
