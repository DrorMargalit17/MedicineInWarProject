<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="MedicineInWarProject.loginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{margin: 0px auto; border: 1px solid black}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
    <center>
        <table id="table1" dir="rtl">
            <tr>
                <td>שם מנהל: </td>
                <td><input type="text" name="mName" id="mName" /></td>
            </tr>
            <tr>
                <td>סיסמה: </td>
                <td><input type="password" name="pw" id="pw" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="submit" name="submit" value ="log in" />
                </td>
            </tr>
        </table>
    </center>
  </form>
    <h3><%=msg %></h3>
</asp:Content>
