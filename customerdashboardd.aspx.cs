using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace barberapplication
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection conm = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\babberweb.mdf;Integrated Security=True;Connect Timeout=30;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
    }
}