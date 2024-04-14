using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineInWarProject
{
    public partial class managerPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<h3>";
                msg += "אינך מנהל, ";
                msg += "אין לך הרשאה להיכנס לדף הניהול";
                msg += "</h3>";
                msg += "<a href = 'MedicineInWarMainPage.aspx'><img src = 'pics/backButton.png' style='height: 60px;' /> </a>";
            }
            else
            {
                msg += "<h3><a href = 'showTable.aspx'>[הצגת הטבלה]</a></h3>";
                msg += "<h3><a href = 'SimpleQuery.aspx'>[שאילתה פשוטה]</a></h3>";
                msg += "<h3><a href = 'ComplexQuery.aspx'>[שאילתה מורכבת]</a></h3>";
                msg += "<h3><a href = 'deleteUser.aspx'>[מחיקת רשומה מהטבלה]</a></h3>";
            }
        }
    }
}