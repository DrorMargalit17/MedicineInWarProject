<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MedicineInWarMainPage.aspx.cs" Inherits="MedicineInWarProject.MedicineInWarMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 {color: blue; text-align: center; font-family: 'Guttman Yad-Brush';}
        h2 {font-family: 'Guttman Yad-Brush'; }
        p {font-size: 14pt; color: navy; font-family: 'Guttman Yad-Brush';}
        hr{width: 100%; height: 3px; background-color: #163b70; float: right; }
        img{height: 200px}
        
    </style>

    <script>
        var backB1 = "pics/backButton1.png";
        var backB2 = "pics/backButton2.png";
        var backB3 = "pics/backButton3.png";
        setInterval("switchF()", 300);

        function show(str) {
            pic1.src = str;
            pic2.src = str;
            pic3.src = str;
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
    <h1>רפואה בהשפעת המלחמה</h1>
    <hr /> 
<ul style="margin-top: 20px;">
    <li>
        <a href="#hospitel">
            <h3>בתי חולים</h3>
        </a>
    </li>
    <li>
        <a href="#MDA">
            <h3>מד"א</h3>
        </a>
    </li>
    <li>
        <a href="#healthFunds">
            <h3>קופות חולים</h3>
        </a>
    </li>
</ul>
<hr /> <br />
    <div style="margin-left: 100px; margin-right:50px;">
        <h2 id="hospitel">בתי חולים: </h2>
        <p>
            לאחר פריצת המלחמה ב7 באוקטובר, בתי החולים ברחבי הארץ נכנסו למצב חירום.
            לאחר הטבח של המחבלים על ישובי הדרום אלפי פצועים פונו לבתי החולים כאשר הם במצב אנוש ובתי החולים לא היו מוכנים.
            התקיים מחסור רציני בתרופות למטופלים ולא היה מספיק כוח אדם כמו רופאים או אחיות על מנת לטפל בכמות פצועים רבה שכזו והעומס על בתי החולים גבר.
        </p>
        <p>
            <a href="hospitels.aspx">קרא עוד...</a>
        </p>
         <div style="text-align: center;">
             <img src="pics/hospitel1.jpeg" /> &nbsp;&nbsp;
             <img src="pics/hospitel2.jpeg" />
        </div>
        <br />
        <div style="text-align: center">
            <a href="#top">
                <img src="pics/backButton1.png" 
                id="pic1" 
                class="backButton"
                alt="backButton" style="height:60px";  />
            </a>
        </div>
        <hr /> <br />

        <h2 id="MDA">מד"א: </h2>
        <p>
        מתחילת המלחמה כוחות מד"א טיפלו במאות רבות של נפגעים, בהם הרוגים, פצועים קשה, בינוני וקל.
        מסוקי מד"א ביצעו עשרות גיחות פינוי בהטס ופינו לבתי החולים שיבא, בילינסון, איכילוב, שמיר אסף הרופא, שערי צדק והדסה עין כרם, עשרות פצועים אזרחים וחיילים מהשטח ומבתי החולים בדרום.
        לאחר טיפול ראשוני בבתי החולים ברזילי וסורוקה בדרום, עשרות אמבולנסים, ניידות טיפול נמרץ ורכבי פינוי יעודיים של מגן דוד אדום, העבירו  לבתי החולים ברחבי הארץ פצועים בכל דרגות הפציעה.
        </p>
        <p>
            <a href="MDA.aspx">קרא עוד...</a>
        </p>
         <div style="text-align: center;">
            <img src="pics/MDA1.jpg" />&nbsp;&nbsp;
            <img src="pics/MDA2.jpg" />
        </div>
        <br />
        <div style="text-align: center">
            <a href="#top">
                <img src="pics/backButton1.png" 
                id="pic2" 
                alt="backButton" style="height:60px";  />
            </a>
        </div>
        <hr /> <br />

        <h2 id ="healthFunds">קופות חולים: </h2>
        <p>
            קופות חולים בלה בלה בלה
        </p>
        <p>
            <a href="healthFunds.aspx">קרא עוד...</a>
        </p>
        <div style="text-align: center">
            <a href="#top">
                <img src="pics/backButton1.png" 
                id="pic3" 
                alt="backButton" style="height:60px";  />
            </a>
        </div>
        <hr /> <br />
    </div>
</asp:Content>
