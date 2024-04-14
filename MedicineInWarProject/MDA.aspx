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

    <div>
        <p>
        מתחילת המלחמה כוחות מד"א טיפלו במאות רבות של נפגעים, בהם הרוגים, פצועים קשה, בינוני וקל.
        מסוקי מד"א ביצעו עשרות גיחות פינוי בהטס ופינו לבתי החולים שיבא, בילינסון, איכילוב, שמיר אסף הרופא, שערי צדק והדסה עין כרם, עשרות פצועים אזרחים וחיילים מהשטח ומבתי החולים בדרום.
        לאחר טיפול ראשוני בבתי החולים ברזילי וסורוקה בדרום, עשרות אמבולנסים, ניידות טיפול נמרץ ורכבי פינוי יעודיים של מגן דוד אדום, העבירו  לבתי החולים ברחבי הארץ פצועים בכל דרגות הפציעה.
        </p>
        <p>
            מתחילת המלחמה טיפלו כוחות מד"א באלפי נפגעים, הרוגים, פצועים קשה, בינוני וקל,
            בהם גם אנשי מד״א שעסקו בהצלת חיים. גם היום (א׳) נמצאים כוחות מד"א ברחבי הארץ בכוננות שיא.
            כ-1,400 אמבולנסים של מד"א בהם ממוגני ירי מאויישים ע"י מתנדבי ועובדי מד"א שמצילים חיים לעיתים תחת אש.
        </p>
        <p>
            בשירותי הדם של מד"א קיימו גם היום התרמות דם בכרמיאל, קיסריה, שמשית, באר יעקב, רמת השרון, ירושלים, אריאל וקרית ים.
            מתחילת המלחמה התרימו בשירותי הדם של מד"א יותר מ-80,000 מנות דם מאזרחים שהתנדבו.
            המנות ומרכיבי הדם סופקו לכלל בתי החולים בארץ לטיפול בפצועים.
        </p>
    </div>

    <div style="text-align: center">
    <a href="MedicineInWarMainPage.aspx">
        <img src="pics/backButton.png"/>
        </a>
    </div>  

</asp:Content>