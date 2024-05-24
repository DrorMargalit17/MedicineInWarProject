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
                msg += "<a href='showTable.aspx'><img src='menuPics/showTable.png' class='managerPics' id='show' onmouseover='showIcon(show, 'menuPics/showTable2.png')' onmouseout='showIcon(show, 'menuPics/showTable.png')'/></a><br />";
                msg += "<a href='SimpleQuery.aspx'><img src='menuPics/simpleQuery.png' class='managerPics' id='simple' onmouseover='showIcon(simple, 'menuPics/simpleQuery2.png')' onmouseout='showIcon(simple, 'menuPics/simpleQuery.png')'/></a><br />";
                msg += "<a href='ComplexQuery.aspx'><img src='menuPics/complexQuery.png' class='managerPics' id='complex' onmouseover='showIcon(complex, 'menuPics/complexQuery2.png')' onmouseout='showIcon(complex, 'menuPics/complexQuery.png')'/></a><br />";
                msg += "<a href='deleteUser.aspx'><img src='menuPics/deleteUser.png' class='managerPics' id='delete' onmouseover='showIcon(delete, 'menuPics/deleteUser2.png')' onmouseout='showIcon(delete, 'menuPics/deleteUser.png')'/></a><br />";

                //msg += "<h3><a href = 'showTable.aspx'>[הצגת הטבלה]</a></h3>";
                //msg += "<h3><a href = 'SimpleQuery.aspx'>[שאילתה פשוטה]</a></h3>";
                //msg += "<h3><a href = 'ComplexQuery.aspx'>[שאילתה מורכבת]</a></h3>";
                //msg += "<h3><a href = 'deleteUser.aspx'>[מחיקת רשומה מהטבלה]</a></h3>";
                msg += "<br />";
                msg += "<a href='MedicineInWarMainPage.aspx'><img src='pics/backButton1.png' id='pic' class='backButton' alt='backButton' style='height:60px';  /></a>";

            }
        }
    }
}