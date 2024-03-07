<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="SMS.Faculty1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style1 {
        width: 100%;
        height: 75px;
    }

    .auto-style3 {
        margin-bottom: 50px;
    }

    .horizontal {
        display: flex;
        flex-flow: row wrap;
        background-color: white;
        padding: 10px;
        margin-left: 60px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
     <tr>
         <td colspan="2" style="text-align: center; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font-weight: 100;">
                MY COURSES
              </td>

     </tr>
         </table>
    <div class="horizontal">
    <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand1">
        <ItemTemplate>

            <table class="auto-style3">
                <tr>
                    <td colspan="2" class="auto-style7">


                        <asp:Image ID="Image1" runat="server" Height="229px" Width="460px" ImageUrl='<%#Eval("Course_Img") %>' />
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: center">Course ID</td>
                    <td class="auto-style11" style="text-align: center">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Course_ID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" style="text-align: center">Course Name</td>
                    <td class="auto-style6" style="text-align: center">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Course_Name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13" style="text-align: center">Total Duration</td>
                    <td class="auto-style14" style="text-align: center">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Duration") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: center">Total Fees</td>
                    <td class="auto-style5" style="text-align: center">
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Total_Fee") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" BackColor="#0066FF" ForeColor="#333333" Text="Edit Course" CommandArgument='<%#Eval("Course_ID") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>

</div>
</asp:Content>
