<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="MedicineInWarProject.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <style>
        h1 {color: red; text-align: center;}
        h2 {text-align: center;}
        h3 {text-align: center; direction: ltr;}
        .tableDB {border: 1px solid black; margin: 0px auto;}
        .tblTH {text-align: center; border: 1px solid black;}
        .tblTD1 {border: 1px solid black; text-align: center;}
        .tblTD2 {border: 1px solid black; text-align: right }
        .tblTD3 {border: 1px solid black; text-align: right;}
    </style>
    <script>
    var backB1 = "pics/backButton1.png";
    var backB2 = "pics/backButton2.png";    
    var backB3 = "pics/backButton3.png";
    setInterval("switchF()", 300);

    function show(str) {
        pic1.src = str;
    }

    var i = 1;
    function switchF()
    {
        j = i % 3;
        switch (j) {
            case 0: show(backB1); break;
            case 1: show(backB2); break;
            case 2: show(backB3); break;
        }
        i++ 
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>טופס רישום</h1>
    <h2><%=sqlSelect %></h2>
    <table style ="border: 1px solid black; margin: 0px auto;">
        <%= st %>
    </table>
    <h3><%= msg %></h3>
    <br />
    <div style="text-align: center">
    <a href ="managerPage.aspx">
        <img src="pics/backButton1.png" 
        id="pic1" 
        class="backButton"
        alt="backButton" style="height:60px";  />
    </a>
</div>
</asp:Content>
