<%@ Page Title="SignUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="margin-top: 10px; border-collapse: separate; border-spacing: 1em;">
        <tr>
            <td>Name: <asp:TextBox ID="txtBoxName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Surname: <asp:TextBox ID="txtBoxSurname" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email: <asp:TextBox ID="txtBoxEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password: <asp:TextBox ID="txtBoxPassword" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone Number: <asp:TextBox ID="txtBoxPhoneNumber" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Button ID="buttonSubmit" runat="server" Text="Submit" OnClick="btnsave_Click"/>
    <asp:Label ID="labelConfirmation" runat="server" Text=""></asp:Label>
</asp:Content>
