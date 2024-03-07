<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewContent.aspx.cs" Inherits="SMS.ViewContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 249px;
        }

        .auto-style3 {
            height: 82px;
        }

        .auto-style4 {
            height: 216px;
        }

        .auto-style5 {
            width: 22%;
            height: 242px;
            margin-left: 122px;
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


    <table class="auto-style2">
        <tr>
            <td class="auto-style3" style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: medium; font-weight: 100">Course Content</td>
        </tr>
    </table>
    <div class="horizontal">
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
    <ItemTemplate>
        <div id="videoContainer" runat="server">

            <table class="auto-style5">
                <tr>
                    <td class="auto-style4">
                        <asp:Literal ID="Literal1" runat="server" Text='<%#Eval("Video_link") %>'></asp:Literal></td>
                </tr>
                <tr>
                    <td style="line-height: normal; text-align: center; vertical-align: middle">
                        <asp:Button ID="Button1" runat="server" Text="delete" BackColor="Red" ForeColor="White" CommandArgument = '<%#Eval("Video_ID") %>'/></td>
                </tr>
            </table>

        </div>
    </ItemTemplate>
</asp:Repeater>
    </div>
    


</asp:Content>
