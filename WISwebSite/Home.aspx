<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WISwebSite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #homeBody {
            width:100%;
            height:600px;
            margin-left:auto;
            margin-right:auto;
        }
        h1 {
            font-family:Verdana;
            color:darkblue;
            text-align:center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="homeBody">
        <!--<h1></h1>-->
        <table style="width:100%">
            <tr>
                <td style="width:90%">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Verdana" Font-Size="35px" ForeColor="DarkBlue"></asp:Label>
                </td>
                <td style="width:10%">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                </td>
            </tr>

        </table>
        
    </div>

</asp:Content>
