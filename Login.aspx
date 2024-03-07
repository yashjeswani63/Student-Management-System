<%@ Page Title="Login" Language="C#" MasterPageFile="~/Visitor.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SMS.Login" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 623px;
            height: 316px;
        }
        .auto-style2 {
            width: 325px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <table class="auto-style1">
               <tr>
                   <td colspan ="2" style="text-align: center">
                        <asp:Label ID="Label4" runat="server" Text="Log In" Font-Bold="True" Font-Size="Larger" ForeColor="Black"></asp:Label>
                   </td>

               </tr>
   
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                &nbsp;/ Mobile</td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>

            </tr>
         
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Height="32px" Width="76px" />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password ?</asp:HyperLink> 
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Text="Not A User ?"></asp:Label>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                </td>
            </tr>

        </table>
    </center>

</asp:Content>
