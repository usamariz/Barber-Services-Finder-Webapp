using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace barberapplication
{
    public partial class customersignup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\babberweb.mdf;Integrated Security=True;Connect Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string retrievequery = "SELECT COUNT(*) FROM customer WHERE email = '" + TextBox2.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(retrievequery, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Write("<script> alert ('Already Customer Registered') </script>");
            }
            else
            {
                conn.Open();
                string insertqery = "insert into customer(name,  email, password, contact, country, city, address) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox6.Text + "', '" + TextBox5.Text + "', '" + TextBox7.Text + "')";
                SqlCommand cmd = new SqlCommand(insertqery, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script> alert ('You are Registered Successfully') </script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
        }
    }
}