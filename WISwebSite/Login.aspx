<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WISwebSite.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       #loginBody {
           width:80%;
           margin-left:auto;
           margin-right:auto;
       }

       #loginBox {
           width:40%;
           height: 250px;
           margin-left:auto;
           margin-right:auto;
           border:solid;
           border-width:2px;
           border-color:dimgray;
       }

       #loginBoxTbl {
           width:100%;
           height:100%;
       }

        #loginBoxTbl tr {
            height:50px;
        }

       #btnLogin {
           margin-left:auto;
           margin-right:auto;
       }

       h1 {
           font-family:Verdana;
           font-size: 35px;
           text-align:center; 
       }

       span {
           font-family:Verdana;
           font-size:30px;
           text-align:center;
           color:darkblue;
       }
           
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="loginBody">
        <span>
            WELCOME TO WIS
        </span>
        <br/>
        <div id="loginBox">
            <table id="loginBoxTbl">
                <tr style="height:10%"><td colspan="2"><h3>Login</h3></td></tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Text="User ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="* ID must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <center>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="106px" BackColor="#FF6666" Font-Bold="True" OnClick="btnLogin_Click" />
                       </center>
                    </td>
                </tr>
            </table>
            
        </div>
        <br/>
    </div>
</asp:Content>
