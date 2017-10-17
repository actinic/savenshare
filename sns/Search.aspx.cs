using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace sns
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                DataTable dt = new DataTable();
                SqlConnection conn = new SqlConnection(CS);
                using (conn)
                {
                    String search = Request.QueryString["id"]; ;
                    SqlDataAdapter ad = new SqlDataAdapter("SELECT * FROM picsAdmin WHERE displayname LIKE @search",conn);
                    ad.SelectCommand.Parameters.AddWithValue("@search","%" + search + "%");
                    
                    ad.Fill(dt);
                }
                DataList1.DataSource = dt;
                DataList1.DataBind();
                //LoadImages();
            }
        }
    }
}