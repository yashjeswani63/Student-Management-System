<%@ Page Title="" Language="C#" MasterPageFile="~/loginStudent.Master" AutoEventWireup="true" CodeBehind="ChangePassword2.aspx.cs" Inherits="SMS.ChangePassword2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 517px;
            height: 278px;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            width: 233px;
            height: 64px;
        }
        .auto-style4 {
            height: 94px;
        }
        .auto-style5 {
            height: 64px;
        }
        .auto-style6 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <center>
    <table class="auto-style1">
           <tr>
               <td colspan ="2" style="text-align: center; font-size: large; font-weight: bold;">
                    Set New Password</td>

           </tr>

        <tr>
            <td class="auto-style3" style="text-align: center">
                New Password</td>
            <td style="text-align: center" class="auto-style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox1" ErrorMessage="Password didn't match"></asp:CompareValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style2" style="text-align: center">
                Confirm <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="text-align: center" class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>

        </tr>
     
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style6">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" Height="32px" Width="76px" />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>

        </tr>
        
    </table>
</center>
</asp:Content>
