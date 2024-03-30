using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineInWarProject
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<h3>שלום ";
            loginMsg += Session["fName"].ToString();
            loginMsg += "</h3>";

            if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "<a href = 'SignUpForm.aspx'>" + "<img src = 'pics/signUpButton.png' style='height: 30px;' />" + "</a> <br />";
                loginMsg += "<a href = 'login.aspx'>" + "<img src = 'pics/signInButton.png' style='height: 30px;' />" + "</a>";
            }
            else
            {
                loginMsg += "<a href = 'UpdateUser.aspx'>" + "<img src='pics/updateDataButton.png' style='height: 30px;' />" + "</a> <br />";
                loginMsg += "<a href = 'logout.aspx'>" + "<img src ='pics/logOutButton.png' style='height:30px;' />" + "</a>";
            }
        }
    }
}