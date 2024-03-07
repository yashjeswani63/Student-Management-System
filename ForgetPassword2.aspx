<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.Master" AutoEventWireup="true" CodeBehind="ForgetPassword2.aspx.cs" Inherits="SMS.ForgetPassword2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 768px;
            height: 294px;
        }
        .auto-style5 {
            height: 85px;
        }
        .auto-style7 {
            height: 76px;
            width: 245px;
        }
        .auto-style8 {
            height: 76px;
        }
        .auto-style9 {
            height: 73px;
            width: 245px;
        }
        .auto-style10 {
            height: 73px;
        }
        .auto-style11 {
            margin-left: 41;
        }
        .auto-style12 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <center>
    <table class="auto-style1">
           <tr>
               <td colspan ="2" style="text-align: center; " class="auto-style5">
                    Set New Password </td>

           </tr>

        <tr>
            <td class="auto-style7" style="text-align: center">
                Enter OTP</td>
            <td style="text-align: center" class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>

        </tr>

        <tr>
            <td class="auto-style7" style="text-align: center">
                New Password</td>
            <td style="text-align: center" class="auto-style8">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox1" ErrorMessage="Password didn't match"></asp:CompareValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style9" style="text-align: center">
                Confirm <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="text-align: center" class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>

        </tr>
     
        <tr>
            <td colspan="2" style="text-align: center" class="auto-style12">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change" Height="32px" Width="79px" CssClass="auto-style11" />
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>

        </tr>
        
    </table>
</center>
</asp:Content>
