<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MDA.aspx.cs" Inherits="MedicineInWarProject.MDA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 { font-family: 'Guttman Yad-Brush'; text-align: center;}
        p {color: navy; font-size: 15pt; font-weight: bold;}
        img{height:60px;}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: 100px; margin-right: 100px; " />
    <br />
    <h1>מד"א: </h1>

    <div style="text-align: center">
    <a href="MedicineInWarMainPage.aspx">
        <img src="pics/backButton.png"/>
        </a>
    </div>  

</asp:Content>
