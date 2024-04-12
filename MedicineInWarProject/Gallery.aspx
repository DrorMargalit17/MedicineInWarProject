<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MedicineInWarProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .h1Gal{
            color: mediumblue;
            text-align: center;
            font-family: 'Guttman Yad-Brush';
            margin-top: 5px;
        }
        .imgCell{width: 230px; height: 180px; border: 1px solid gray;}
        .bigPicImg{width: 480px; height: 380px; border: 1px solid gray;}
    </style>
    <script>
        function picShow(picSrc) {
            bigPic.src = picSrc;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="h1Gal">גלריית תמונות</h1>
    <table style="margin: 0px auto;">
        <tr>
            <td><img class="imgCell" src="GalleryPics/pic1.jpg" onmouseover="picShow('GalleryPics/pic1.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic2.jpeg" onmouseover="picShow('GalleryPics/pic2.jpeg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic3.jpg" onmouseover="picShow('GalleryPics/pic3.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic4.jpg" onmouseover="picShow('GalleryPics/pic4.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
        </tr>
        <tr>
            <td><img class="imgCell" src="GalleryPics/pic5.jpeg" onmouseover="picShow('GalleryPics/pic5.jpeg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td rowspan="2" colspan="2">
                <img class="bigPicImg" id="bigPic" src="GalleryPics/mainpic.jpg" />
            </td>
            <td><img class="imgCell" src="GalleryPics/pic6.jpeg" onmouseover="picShow('GalleryPics/pic6.jpeg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
        </tr>
        <tr>
            <td><img class="imgCell" src="GalleryPics/pic7.jpg" onmouseover="picShow('GalleryPics/pic7.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic8.jpg" onmouseover="picShow('GalleryPics/pic8.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
        </tr>
        <tr>
            <td><img class="imgCell" src="GalleryPics/pic9.jpg" onmouseover="picShow('GalleryPics/pic9.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')"/></td>
            <td><img class="imgCell" src="GalleryPics/pic10.jpg" onmouseover="picShow('GalleryPics/pic10.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic11.jpg" onmouseover="picShow('GalleryPics/pic11.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
            <td><img class="imgCell" src="GalleryPics/pic12.jpg" onmouseover="picShow('GalleryPics/pic12.jpg')" onmouseout="picShow('GalleryPics/mainpic.jpg')" /></td>
        </tr>

    </table>
</asp:Content>
