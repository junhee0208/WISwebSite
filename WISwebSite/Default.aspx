<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WISwebSite.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .links {
            width:50%;
            height: 50%;
            margin-left:auto;
            margin-right:auto;
        }

            .links h3{
                font-family:Verdana;
            }

            .links a{
                font-family:Verdana;
                font-size: 20px;
            }

    </style>

    <title>Welcome Institue of Studies</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="links">
        <h2 style="font-family:Verdana;color:darkblue;">Welcome to WIS</h2>
        <h3>You don't have an account? </h3><br/>
        &nbsp; *
        <a href="Register.aspx">
            Register account
        </a><br/><br/>

        <h3>You already have an account? </h3><br/>
        &nbsp; *
        <a href="login.aspx">
            Log in
        </a><br/><br/>
    </div>
</asp:Content>
