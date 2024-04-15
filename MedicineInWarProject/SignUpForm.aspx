    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="MedicineInWarProject.SignUpForm" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!-- ~~~~~~~~~~~~~~~~signUp Form Style Set~~~~~~~~~~~~~~~~~~~~~ -->
        <style>
           h1{text-align: center; color: white;}
           h3{text-align:center; font-size:16pt; font-family: 'Comic Sans MS'; font-weight: bold}
           input{padding: 10px 50px; margin: 4px 2px; cursor: pointer; border: 2px black solid; text-align: center;}
           .formTable{margin: 0px auto; border: 2px double black; border-radius:10px;}
           .title{font-size: 15px; font-family: 'Guttman Yad-Brush';}
           .header{background-color: black; width: 500px; margin: 0px auto; border-radius:10px;}
           .formTable1{background-color: darkgray; width: 500px; margin: 0px auto; border-radius:10px;}

       </style>         
        <!-- ~~~~~~~~~~~~~~~~signUp Form validation check~~~~~~~~~~~~~~~~~~~~~ -->
        <script>
            /*email validation check functions*/

            //Checking if there is a letter or letters in the email
            function isQuot(email) {
                var quot = '\"', quot1 = "\'";
                if (email.indexOf(quot) != -1 || email.indexOf(quot1) != -1)
                    return true;
                return false;
            }

            //Checking if the email contains Hebrew characters
            function isHebrew(email) {
                var len = email.length;
                var i = 0, ch;
                while (i < len) {
                    ch = email.charAt(i);
                    if (ch >= 'א' && ch <= 'ת')
                        return true;
                    i++;
                }
                return false;
            }

            //Checks if the email contains unusual characters
            function isValidString(email) {
                var badChr = '$%^&*()-! []{}<>?';
                var len = email.length;

                var i = 0, pos, ch;
                while (i < len) {
                    ch = email.charAt(i);
                    pos = badChr.indexOf(ch);
                    if (pos != -1)
                        return true;
                    i++;
                }
                    return false;
            }

            /*password validation check functions*/

            //Checks if the password contains more than one uppercase letter
            function isUpperCase(password) {
                var len = password.length;
                var i = 0, ch;
                var counter = 0;
                while (i < len) {
                    ch = password.charAt(i);
                    if (ch >= 'A' && ch <= 'Z')
                        counter++
                    i++;
                }
                if (counter < 1)
                    return true;
                else
                    return false;
            }         

            //Checks if the password contains more than one lowercase letter
            function isLowerCase(password) {
                var len = password.length;
                var i = 0, ch;
                var counter = 0;
                while (i < len) {
                    ch = password.charAt(i);
                    if (ch >= 'a' && ch <= 'z')
                        counter++
                    i++;
                }
                if (counter < 1)
                    return true;
                else
                    return false;
            }  

            //Checks if the password contains at least one digit
            function isdigit(password) {
                var len = password.length;
                var i = 0, digit;
                var counter = 0;
                while (i < len) {
                    digit = password.charAt(i);
                    if (digit >= 0 && digit <= 9)
                        counter++
                    i++;
                }
                if (counter < 1)
                    return true; 
                else
                    return false;
            }  

            //Checking if there is a letter or letters in the password
            function isQuotPassword(password) {
                var quot = '\"', quot1 = "\'";
                if (password.indexOf(quot) != -1 || password.indexOf(quot1) != -1)
                    return true;
                return false;
            }

            //Checks if the email contains unusual characters
            function isValidStringPassword(password) {
                var badChr = '$%^&*()-! []{}<>?';
                var len = password.length;

                var i = 0, pos, ch;
                while (i < len) {
                    ch = password.charAt(i);
                    pos = badChr.indexOf(ch);
                    if (pos != -1)
                        return true;
                    i++;
                }
                return false;
            }

            //Checking if the password contains Hebrew characters
            function isHebrewPassword(password) {
                var len = password.length;
                var i = 0, ch;
                while (i < len) {
                    ch = password.charAt(i);
                    if (ch >= 'א' && ch <= 'ת')
                        return true;
                    i++;
                }
                return false;
            }


            /* main function */
            function chkForm() {
                //Defining variables: username, first name, last name
                var uName = document.getElementById("uName").value;
                var fName = document.getElementById("fName").value;
                var lName = document.getElementById("lName").value;
                //Defining an email variable and variables associated with it
                var email = document.getElementById("email").value;
                var emailSize = email.length;
                var atSign = email.indexOf('@');
                var dotSign = email.indexOf('.', atSign);
                //alert variable

                //Username validation: Contains more than 2 characters
                if (uName.length < 2) {
                    document.getElementById("mUName").value = "שם משתמש קצר מדי או לא קיים";
                    document.getElementById("mUName").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mUName").style.display = "none";

                //Proper name check: Contains more than 2 characters
                if (fName.length < 2) {
                    document.getElementById("mFName").value = "שם משתמש קצר מדי או לא קיים";
                    document.getElementById("mFName").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mFName").style.display = "none";

                //Validity check of last name: contains more than 2 characters
                if (lName.length < 2) {
                    document.getElementById("mLName").value = "שם משתמש קצר מדי או לא קיים";
                    document.getElementById("mLName").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mLName").style.display = "none";

                //email check list//

                //massage variavle
                msg = "";

                //checks if the email adress is too short
                if (emailSize < 6)
                    msg = "מייל קצר מדי";

                //checks if the email adress is too long
                else if (emailSize > 30)
                    msg = "מייל ארוך מדי"

                //check if user name is at least 2 chars
                else if (atSign < 2)
                    msg = "שם המשתמש בכתובת הדואל חייב להיות 2 תווים לפחות";

                //check if @ sign is in mail address
                else if (atSign == -1)
                    msg = "סימן @ לא קיים בכתובת"

                //checks if there's more than 2 @ signs in mail address
                else if (atSign != email.lastIndexOf('@'))
                    msg = "אסור יותר מ-@ אחד בכתובת הדואל";

                //checks if the @ sign isn't in the first or the last place in the mail address
                else if (atSign < 2 || email.lastIndexOf('@') == emailSize - 1)
                    msg = "סימן @ לא יכול להיות במקום הראשון או האחרון";

                //checks if . (dot) isn't in the first or the last place in the mail address
                else if (email.indexOf('.') == 0 || email.lastIndexOf('.') == emailSize - 1)
                    msg = "נקודה לא יכולה להיות במקום הראשון או האחרון";

                //checks if . (dot) is at least 2 chars after the @ sign
                else if (dotSign - atSign <= 1)
                    msg = "נקודה חייבת להיות לפחות 2 תווים אחרי סימן ה-@";

                //checks if mail address has "" or ''
                else if (isQuot(email))
                    msg = "כתובת דואל לא יכולה להכיל גרש או גרשיים";

                //checks if there is hebrew chars in mail adress
                else if (isHebrew(email))
                    msg = "כתובת דוא'ל לא יכולה להכיל עברית";

                //checks if there is valid string chars in mail adress
                else if (isValidString(email))
                    msg = "כתובת דואל לא יכולה להכיל תווים אסורים"
                else
                    document.getElementById("mEmail").style.display = "none";

                //Placing the value in msg 
                if (msg != "") {
                    document.getElementById("mEmail").value = msg;
                    document.getElementById("mEmail").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mEmail").style.display = "none";

                //Checks if gender is checked
                var gender = document.getElementsByName("gender");
                if (!gender[0].checked && !gender[1].checked) {
                    document.getElementById("mGender").value = "חובה לסמן מגדר";
                    document.getElementById("mGender").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mGender").style.display = "none";

              
                // Phone Number check list //
                var phoneMSG = "";
                var phone = document.getElementById("phoneNum").value;

                //checks if phone number has exactly 7 digits
                if (phone.length != 7)
                    phoneMSG = "מספר טלפון חייב להכיל בדיוק 7 ספרות";
                //checks if phone number has only digits
                if (isNaN(phone))
                    phoneMSG = "מספר טלפון חייב להכיל ספרות בלבד";

                //Placing the value in phone msg
                if (phoneMSG != "") {
                    document.getElementById("mPhone").value = phoneMSG;
                    document.getElementById("mPhone").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mPhone").style.display = "none";

                //Checks if a city of residence is selected
                var city = document.getElementById("city").value;
                if (city == "other") {
                    document.getElementById("mCity").value = "חובה לבחור עיר מגורים";
                    document.getElementById("mCity").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mCity").style.display = "none";

                //password check list//

                //Defining variables: password, passwordSize, passwordMSG
                var password = document.getElementById("passW").value;
                var passwordSize = password.length;
                passwordMSG = "";

                //check if the password is too short
                if (passwordSize < 6)
                    passwordMSG = "אורך סיסמה קצר מדי";

                //check if the password is too short
                if (passwordSize > 10)
                    passwordMSG = "אורך סיסמה ארוך מדי"

                //check if there's at least 1 uppercase letter in password
                if (isUpperCase(password))
                    passwordMSG = "סיסמה חייבת להכיל לפחות אות אחת גדולה"; 

                //check if there's at least 1 lowercase letter in password
                if (isLowerCase(password))
                    passwordMSG = "סיסמה חייבת להכיל לפחות אות אחת קטנה";

                //check if there's at least 1 digit in password
                if (isdigit(password))
                    passwordMSG = "סיסמה חייבת להכיל לפחות ספרה אחת"

                //check's if there's any quot's in password
                if (isQuotPassword(password))
                    passwordMSG = "סיסמה אינה יכולה להכיל גרש או גרשיים";

                //checks if there's bad chars in password
                if (isValidStringPassword(password))
                    passwordMSG = "סיסמה לא יכולה להכיל תווים אסורים";

                //checks if there's hebrew chars in password
                if (isHebrewPassword(password))
                    passwordMSG = "סיסמה לא יכולה להכיל עברית";

                //Placing the value in passwordMSG 
                if (passwordMSG != "") {
                    document.getElementById("mPassword").value = passwordMSG;
                    document.getElementById("mPassword").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mPassword").style.display = "none";

                //passwordConfirm check//

                //Defending variable: passwordConfirm
                var passwordConfirm = document.getElementById("passWComfirm").value;

                //Checks if password and verify password are the same
                if (password != passwordConfirm) {
                    document.getElementById("mPasswordCheck").value = "סיסמאות חייבות להיות זהות";
                    document.getElementById("mPasswordCheck").style.display = "inline";
                    return false;
                }
                else
                    document.getElementById("mPasswordCheck").style.display = "none";   

                
            }
        </script>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" onsubmit="return chkForm();" >
        <br />
        <table class="formTable">
            <tr>
                <td class="header" colspan="2">
                    <h1>טופס רישום</h1>
                </td>
            </tr>
            <tr>
                <td class="title">שם משתמש: </td>
                <td>
                    <input type="text" id ="uName" name="uName" class="input"/>
                </td >
                <td>
                    <input type="text" id="mUName" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
             <tr>
                <td class="title">שם פרטי: </td>
                <td>
                    <input type="text" id ="fName" name="fName" class="input"/>
                </td>
                <td>
                    <input type="text" id="mFName" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                            disabled="disabled" />
                </td>    
            </tr>
            <tr>
                <td class="title">שם משפחה: </td>
                <td>
                    <input type="text" id ="lName" name="lName" class="input"/>
                </td>
                <td>
                    <input type="text" id="mLName" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                            disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td class="title">כתובת מייל: </td>
                <td>
                    <input type="text" id="email" name="email" class="input" />
                </td>
                <td>
                    <input type="text" id="mEmail" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                            disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td class="title">מגדר: </td>
                <td>
                    <input type="radio" name="gender" value="male"/>זכר
                    <input type="radio" name ="gender" value="female"/>נקבה
                </td>
                <td>
                    <input type="text" id="mGender" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td class="title">מספר טלפון: </td> 
                <td dir ="ltr">
                    <select name ="prefix" >
                        <option value ="050">050</option>
                        <option value ="052">052</option>
                        <option value ="053">053</option>
                        <option value ="054">054</option>
                        <option value ="055">055</option>
                        <option value ="057">057</option>
                        <option value ="058">058</option>
                        <option value ="02">02</option>
                        <option value ="03">03</option>
                        <option value ="04">04</option>
                        <option value ="08" selected="selected">08</option>
                        <option value ="09">09</option>
                        <option value ="077">077</option>
                    </select>
                
                    &nbsp;&nbsp; - &nbsp;&nbsp; 
                   <input type ="text" name ="phoneNum" id="phoneNum" />
                </td>
                <td>
                    <input type="text" name="mPhone" id ="mPhone" size="30"
                        style="display: none; background-color: silver; font-weight:bold;"
                        disabled ="disabled" />
                </td>
            </tr>
            <tr>
                <td class="title">עיר מגורים: </td>
                <td>
                    <select name="city" id="city">
                        <option value="other">בחר יישוב מגורים</option>
                        <option value="חיפה">חיפה</option>
                        <option value="תל אביב">תל אביב</option>
                        <option value="ירושליים">ירושליים</option>
                        <option value="מודיעין">מודיעין</option>
                        <option value="באר שבע">באר שבע</option>
                        <option value="מטולה">מטולה</option>
                        <option value="צפון">צפון</option>
                        <option value="מרכז">מרכז</option>
                        <option value="דרום">דרום</option>
                    </select>
                </td>
                <td>
                    <input type="text" name="mCity" id="mCity" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />                    
                </td>
            </tr>
            <tr>
                <td class="title">שנת לידה: </td>
                <td>
                    <select name ="yearBorn" id ="yearBorn">
                        <%=yrBorn %>
                    </select>
                </td>
                <td> </td>
            </tr>
            <tr>
                <td class="title">תחביבים: </td>
                <td>
                    <table style ="width: 550px;">
                        <tr>
                            <td><input type="checkbox" name="hobby" value="1" />Computers</td>
                            <td><input type="checkbox" name="hobby" value="2" />Music</td>
                            <td><input type="checkbox" name="hobby" value="3" />Movies</td>
                            <td><input type="checkbox" name="hobby" value="4" />TV</td>
                            <td><input type="checkbox" name="hobby" value="5" />Horses</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="title">סיסמה: </td>
                <td>
                    <input type="password" name="passW" id="passW" size="10" />
                    <span style="color: red;"> * 6-10 תווים</span>
                </td>
                <td>
                    <input type="text" name="mPassword" id="mPassword" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />               
                </td>
            </tr>
            <tr>
                <td class="title">אימות סיסמה: </td>
                <td>
                    <input type="password" name="passWComfirm" id="passWComfirm" size="10" />
                    <span style="color: red;"> * 6-10 תווים</span>
                </td>
                <td>
                    <input type="text" name="mPasswordCheck" id="mPasswordCheck" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />               
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center";>
                    <input type="submit" name="submit" value="send" />
                </td>
            </tr>       
        </table>
    </form>
        <h3><%=msg %></h3>
    </asp:Content>
