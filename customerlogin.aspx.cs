﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace barberapplication
{
    public partial class customerlogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\babberweb.mdf;Integrated Security=True;Connect Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script> alert ('please enter Email and password') </script>");
            }
            else
            {
                string retrievequery = "select count(*) from customer where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(retrievequery, conn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["cusemail"] = TextBox1.Text;
                    Response.Redirect("customerdashboardd.aspx");
                }
                else
                {
                    Response.Write("<script> alert ('your enter Email and Password wrong') </script>");
                }
            }
        }
    }
}