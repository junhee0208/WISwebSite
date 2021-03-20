<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WISwebSite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #registerBody {
            width:60%;
            height:700px;
            margin-left:auto;
            margin-right:auto;
            border:solid;
            border-color:dimgray;
            border-width:2px;
        }


        #registerTable {
            width:100%;
            height:90%;
            margin-left:3%;
        }

            #registerTable tr {
                height:10%
            }

        .LabelTd {
            width:20%;
        }

        h3 {
            font-family:Verdana;
            text-align:center;
            vertical-align:central;
        }
        
        .auto-style1 {
            height: 6%;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="registerBody">
        <h3 class="auto-style1">Student Registration </h3>
        <table id="registerTable">
            
            <tr>
                <td class="LabelTd">

                    <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*First name:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="* First name must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label7" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Last name:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="* Last name must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Student ID:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStudentID" ErrorMessage="* Student ID must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label4" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Password:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label5" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Confirm Password:"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtCfmPassword" runat="server" TextMode="Password"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtCfmPassword" ErrorMessage="* Password must  same as above " Font-Names="Verdana" Font-Size="12px" ForeColor="Red" ControlToCompare="txtPassword"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label6" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Email address:"></asp:Label>

                </td>
                <td>
                    <table>
                        
                        <tr>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Email must be entered" Font-Names="Verdana" Font-Size="12px" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Invalid Email address" Font-Names="Verdana" Font-Size="12px" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                    </table>
                </td>
                
            </tr>
            <tr>
                <td class="LabelTd">
                    <asp:Label ID="Label8" runat="server" Font-Names="Verdana" Font-Size="Small" Text="*Program:"></asp:Label>

                </td>
                <td>
                    <asp:DropDownList ID="txtProgramList" runat="server" Width="250px">
                        <asp:ListItem Selected="True">Certificate in IT</asp:ListItem>
                        <asp:ListItem>Certificate in Business</asp:ListItem>
                        <asp:ListItem>Diploma in IT level 5</asp:ListItem>
                        <asp:ListItem>Diploma in Business level 5</asp:ListItem>
                        <asp:ListItem>Diploma in IT level 6</asp:ListItem>
                        <asp:ListItem>Diploma in Business level 6</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="LabelTd" colspan="2" style="height:20px">
                    <center><asp:Button ID="btnRegister" runat="server" Text="Sign Up" OnClick="btnRegister_Click" /></center>
                </td>
            </tr>

            <tr>
                <td colspan="2">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                            <asp:BoundField DataField="studentId" HeaderText="studentId" SortExpression="studentId" />
                            <asp:BoundField DataField="eMail" HeaderText="eMail" SortExpression="eMail" />
                            <asp:BoundField DataField="programName" HeaderText="programName" SortExpression="programName" />
                            <asp:CheckBoxField />
                        </Columns>
                    </asp:GridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbWISstudentConnectionString %>" SelectCommand="SELECT [firstName], [lastName], [studentId], [eMail], [programName] FROM [studentInfo]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>    
    </div>
</asp:Content>
