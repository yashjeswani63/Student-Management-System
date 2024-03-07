<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CourseManage.aspx.cs" Inherits="SMS.CourseManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*.auto-style2 {
            width: 100%;
            height: 247px;
        }

        .auto-style3 {
            width: 891px;
        }

        .auto-style4 {
            margin-left: 0px;
        }*/

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
    <center>
        <table class="auto-style2">
            <tr>
                <td colspan="2" style="text-align: center; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large; font-weight: 100; font-style: normal">Add Course</td>
            </tr>
            <tr>
                <td class="auto-style3">Course ID</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Course Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Duration</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Fees</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Upload Course Image</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style4" Width="209px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Faculty ID</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="95px" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
    <table class="auto-style1" style="text-align: center; vertical-align: middle; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 30px; font-weight: bolder">
        <tr>
            <td>Our Courses</td>
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
                        <td class="auto-style2" style="text-align: center"> Faculty ID</td>
                        <td class="auto-style5" style="text-align: center">
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Faculty_ID") %>'></asp:Label>
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
