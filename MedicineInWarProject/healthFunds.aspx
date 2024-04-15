<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="healthFunds.aspx.cs" Inherits="MedicineInWarProject.healthFunds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h1 { font-family: 'Guttman Yad-Brush'; text-align: center;}
        p {color: navy; font-size: 15pt; font-weight: bold;}
        img{height:60px;}
    </style>
    <script>
        var backB1 = "pics/backButton1.png";
        var backB2 = "pics/backButton2.png";
        var backB3 = "pics/backButton3.png";
        setInterval("switchF()", 300);

        function show(str) {
            pic.src = str;
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
    <div style="margin-left: 100px; margin-right: 100px; " />
    <br />
    <h1>קופות חולים: </h1>

    <div style="float: right; margin: 15px;">
        <img src="pics/healthFunds1.jpg" style="height: 180px" />
    </div>

    <div>
    <p>
        אירועי 7 באוקטובר והמלחמה שהחלה בעקבותיהם הביאו לתחושות קשות ומורכבות בקרב אזרחי ישראל,
        כאשר רבים חוו וחווים פגיעה בבריאות הנפשית לצד הבריאות פיזית, בדרגות שונות.
        ישראלים רבים מדווחים כי מאז תחילת המלחמה מצבם הבריאותי הפיזי והנפשי של האזרחים ירד ירידה דרמטית.
        ההשפעה על בריאות הציבור ניכרת בעלייה בהשמנה ובעישון, וכן בוויתור על בדיקות והזנחת הטיפול במחלות כרוניות
    </p>
    <p>
        בעקבות המלחמה, כל ישראלי שלישי מעיד על שינוי לרעה במצבו הבריאותי, וכן חלה ירידה דרמטית 
        בשיעור הישראלים שמדרגים את מצב בריאותם מצוין או טוב מאוד. 60% דיווחו כי מצבם הבריאותי היה מצוין
        או טוב מאוד לפני 7 באוקטובר ורק 42% דיווחו שהם מרגישים כך גם כעת. שיעור הישראלים שתופסים
        את מצבם בינוני או גרוע כמעט והוכפל בזמן המלחמה ועומד כיום על 21% לעומת 12% בלבד טרם המלחמה.
    </p>
    <p>
        36% מהמשיבים שהיה להם תור לרופא/ה או בדיקה רפואית שנקבעו מראש טרם המלחמה 
        דיווחו כי וויתרו או דחו את התור ו-17% דיווחו כי ויתרו או דחו ביצוע של בדיקת סקר חשובה, 
        כמו ממוגרפיה לאיתור מוקדם של סרטן השד או קולונוסקופיה לגילוי מוקדם של סרטן המעי הגס.
    </p>
    <p>
        אחד החששות במערכת הבריאות הוא שהמצב הנוכחי יוביל לעלייה בהתמכרויות בקרב הציבור. 
        ממצאי הסקר מאששים חשש זה כאשר כ-56% מהמעשנים העידו כי צריכת הסיגריות שלהם התגברה בתקופת המלחמה 
        ו-15% מהמשיבים שצורכים אלכוהול בשגרה דיווחו כי הם שותים יותר משקאות אלכוהוליים בימים אלה.
    </p>
      
    
</div>

        <div style="text-align: center">
    <a href="MedicineInWarMainPage.aspx">
        <img src="pics/backButton1.png" 
        id="pic" 
        class="backButton"
        alt="backButton" style="height:60px";  />
    </a>
</div>
</asp:Content>
