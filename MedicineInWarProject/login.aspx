<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MedicineInWarProject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        table{margin: 0px auto; direction: ltr; text-align: center; border: 1px solid black;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
        <h1>כניסת משתמש</h1>
        <table>
            <tr>
                <td>שם משתמש</td>
                <td><input type="text" name="uName" id="uName" /></td>
            </tr>
            <tr>
                <td>סיסמה</td>
                <td><input type="password" name="pw" id="pw" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                <input type ="submit" name="submit" value="log In"/>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
