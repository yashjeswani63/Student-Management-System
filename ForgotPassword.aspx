<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="SMS.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 698px;
            height: 290px;
        }
        .auto-style2 {
            width: 237px;
            margin-left: 39;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            height: 252px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center class="auto-style4">
    <table class="auto-style1">
           <tr>
               <td colspan ="3" style="text-align: center; font-size: large; font-weight: bolder;">
                    Forget Password</td>

           </tr>
   
        <tr>
            <td class="auto-style2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            &nbsp;/ Mobile</td>
            <td style="text-align: center" class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>

            <td style="text-align: center">
                <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="Black" OnClick="Button1_Click" Text="Generate OTP" Width="120px" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>

        </tr>
             
        </table>
</center>
</asp:Content>
