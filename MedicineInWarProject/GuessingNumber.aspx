<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GuessingNumber.aspx.cs" Inherits="MedicineInWarProject.GuessingNumber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    h1 {
        text-align: center
    }
    input{
        text-align: center;
        font-size: 18pt;
    }
    .inputBox{
        padding: 10px 40px;
        margin: 4px 2px;
        cursor: pointer;
        border: 2px black solid;

    }
    .checkButton {
       background-color: white;
       border: 2px solid #00BFFF;
       color: black;
       padding: 15px 32px;
       text-align: center;
       text-decoration: none;
       display: inline-block;
       font-size: 20px;
       margin: 4px 2px;
       cursor: pointer;
       transition-duration: 0.4s;
    }
    .checkButton:hover{
        background-color: #00BFEE;
        color: white;
    }
    .restartButton{
        background-color: white;
        border: 2px solid orange;
        color: black;
        padding: 18px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
        transition-duration: 0.4s;
    }
    .restartButton:hover{
        background-color: orange;
        color: white;
    }
    
    p{
        font-size: 18pt;
    }
</style>
<script>
    {
        var i = 1;
        var msg;
        var number = parseInt(((Math.random() * 100) + 1));
        
        function checkNumber() {
            if (i <= 6) {
                var guess = parseInt(document.getElementById("guess").value);
                document.getElementById("restartButton").disabled = true;
                if (number == guess) {
                    msg = "כל הכבוד! הצלחת, תרצה לנחש עוד מספר"
                    document.getElementById("guess").disabled = true;
                }   
                else if (number < guess)
                    msg = "הניחוש שלך גדול מדי"
                else
                    msg = "הניחוש שלך קטן מדי"
                document.getElementById("msg").innerHTML = msg;
                i++;

            } else {
                msg = "נגמרו לך מספר הניחושים. תרצה לנחש עוד מספר?"
                document.getElementById("msg").innerHTML = msg;
                document.getElementById("restartButton").disabled = false;
                document.getElementById("checkButton").disabled = true;
                document.getElementById("guess").disabled = true;

            }
        }

        function restartGuess() {
            number = parseInt(((Math.random() * 100) + 1));

            guess = document.getElementById("guess")
            guess.value = "";

            msg = ""
            document.getElementById("msg").innerHTML = msg;
            i = 1;
            document.getElementById("checkButton").disabled = false;
            document.getElementById("guess").disabled = false;
       }   
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>נחש מספר</h1>
    <div style="text-align: center; direction: ltr;">
            <!-- ~~~~~~~~~~~~~~~~תיבת קלט~~~~~~~~~~~~~~~~~~~~~ -->
     <p>the number:</p> <input type="text" id="guess" class="inputBox" /> 
        <br /> <br />
            <!-- ~~~~~~~~~~~~~~~~כפתור בדיקת ניחוש~~~~~~~~~~~~~~~~~~~~~ -->
        <input type="button" value="check" id="checkButton" class="checkButton" onclick="checkNumber();" />
        <br /> <br />
            <!-- ~~~~~~~~~~~~~~~~כפתור הגרלה מחדש~~~~~~~~~~~~~~~~~~~~~ -->
        <input type="button" value="Restart" id="restartButton" class="restartButton" onclick="restartGuess();" />
            <!-- ~~~~~~~~~~~~~~~~הודעה~~~~~~~~~~~~~~~~~~~~~ -->
        <h2 id="msg"></h2>
     </div>

</asp:Content>
