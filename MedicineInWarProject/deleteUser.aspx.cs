using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineInWarProject
{
    public partial class deleteUser : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlDelete = "";
        public string sqlSelect = "";
        public string userToDelete = "";
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center;'>";
                msg += "<h3>אינך מנהל, אינך רשאי לצפות בדף זה</h3>";
                msg += "<a href='MedicineInWarMainPage.aspx'>[המשך]</a>";
                msg += "</div>";
                Response.Redirect("MedicineInWarMainPage.aspx");
            }
            else
            {
                string fileName = ".\\SQLEXPRESS.DRORdb.dbo";
                string tableName = "usersTbl";

                sqlSelect = "SELECT * FROM " + tableName;
                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "אין נרשמים";
                else
                {
                    st += "<tr>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >שם משתמש</th>";
                    st += "<th class = 'tblTH' style = 'width: 80px;' >שם משפחה</th>";
                    st += "<th class = 'tblTH' style = 'width: 60px;' >שם פרטי</th>";
                    st += "<th class = 'tblTH' style = 'width: 140px;' >דואל</th>";
                    st += "<th class = 'tblTH' style = 'width: 60px;' >מגדר</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >ישוב מגורים</th>";
                    st += "<th class = 'tblTH'>שנת לידה</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >טלפון</th>";
                    st += "<th class = 'tblTH'>Computers</th>";
                    st += "<th class = 'tblTH'>Music</th>";
                    st += "<th class = 'tblTH'>Movies</th>";
                    st += "<th class = 'tblTH'>TV</th>";
                    st += "<th class = 'tblTH'>Horses</th>";
                    st += "<th class = 'tblTH' style = 'width: 100px;' >סיסמה</th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["uName"] + "</td>";
                        st += "<td class = 'tblTD2'>" + table.Rows[i]["lName"] + "</td>";
                        st += "<td class = 'tblTD3'>" + table.Rows[i]["fName"] + "</td>";
                        st += "<td class = 'tblTD3' style = 'width: 60px;'>";
                        st += table.Rows[i]["email"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["gender"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["city"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["yearBorn"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["prefix"] + "-";
                        st += table.Rows[i]["phone"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob1"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob2"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob3"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob4"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["hob5"] + "</td>";
                        st += "<td class = 'tblTD1'>" + table.Rows[i]["pw"] + "</td>";

                        userToDelete = table.Rows[i]["uName"].ToString();
                        st += "<td style = 'text align: center; border: 1px solid black;'>";
                        st += "<a href = 'DeleteRecord.aspx?uName=" + userToDelete + "'>[Delete]</a>";
                        st += "</tr>";

                    }
                }
            }

        }
    }
}