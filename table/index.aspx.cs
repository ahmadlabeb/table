using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace table
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataTable dTable = new DataTable();
                dTable.Columns.AddRange(new DataColumn[5] {new DataColumn("id"),new DataColumn("name_effect"),new DataColumn("time"),new DataColumn("update"),new DataColumn("delete") });
                dTable.Rows.Add(1, "public services", 10, "update", "delete");
                dTable.Rows.Add(2, "health", 20, "update", "delete");
                dTable.Rows.Add(3, "box", 10, "update", "delete");
                dTable.Rows.Add(4, "public services", 10, "update", "delete");
                
                GridView1.UseAccessibleHeader = true;
                GridView1.DataSource = dTable;
                GridView1.DataBind();

                //dTable.Clear();
                //dTable.Rows.Add();
                //GridView1.DataSource = dTable;
                //GridView1.DataBind();


            }

        }

      
    }
}