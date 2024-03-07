<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SMS.SignUp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 719px;
            height: 328px;
        }

        .auto-style2 {
            height: 63px;
            width: 560px;
        }

        .auto-style3 {
            height: 55px;
        }

        .auto-style4 {
            height: 65px;
        }

        .auto-style5 {
            margin-left: 164px;
        }

        .auto-style6 {
            width: 651px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center; font-size: large; font-weight: bolder; font-style: normal;" class="auto-style4">Student Registeration</td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Selected Course ID</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox12" ErrorMessage="Please Select Course" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">First Name</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Last Name</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Gender</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style5" Height="25px" RepeatDirection="Horizontal" Width="171px" AutoPostBack="True">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage=" Please Select Gender" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Mobile Number</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Mobile No is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Email ID</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="col-xs-offset-0"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not in proper format" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Password</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10" ErrorMessage="Password is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox10" ErrorMessage="Password didn't match" SetFocusOnError="True"></asp:CompareValidator>
                    <br />
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Confirm Password</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox11" ErrorMessage="Confirm Password is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">State</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="142px" AutoPostBack="True" CssClass="col-xs-offset-0" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="State is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">City</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="142px" CssClass="col-xs-offset-0">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList2" ErrorMessage="City is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Location</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="36px" Width="171px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="Location is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Landmark</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="35px" Width="160px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox6" ErrorMessage="Land Mark is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td class="auto-style2" style="text-align: center; vertical-align: top;">Pin Code</td>
                <td style="text-align: center" class="auto-style6">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox7" ErrorMessage="PIN is Required" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>

            </tr>

            <tr>
                <td colspan="2" style="text-align: center" class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>

            </tr>

        </table>
    </center>
</asp:Content>
