﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace barberapplication
{
    public partial class barberupdateprofile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\babberweb.mdf;Integrated Security=True;Connect Timeout=30;");


        protected void Page_Load(object sender, EventArgs e)
        {
          

                if (!Page.IsPostBack)
                {

                    TextBox1.Text = Session["baremail"].ToString();
                show();
                    
                }

        }
        private void show()
        {
            conn.Open();
            string showquery = "select * from barber where email='" + TextBox1.Text + "'";
            SqlCommand cme = new SqlCommand(showquery, conn);
            SqlDataReader sdr = cme.ExecuteReader();
            while (sdr.Read())
            {

                TextBox2.Text = sdr.GetValue(1).ToString().Trim();

                TextBox3.Text = sdr.GetValue(3).ToString().Trim();
                TextBox4.Text = sdr.GetValue(4).ToString().Trim();
                TextBox5.Text = sdr.GetValue(6).ToString().Trim();
                TextBox6.Text = sdr.GetValue(5).ToString().Trim();
                TextBox7.Text = sdr.GetValue(7).ToString().Trim();





            }
            conn.Close();
        }

            protected void Button1_Click(object sender, EventArgs e)
        {


            string retrievequery = "SELECT COUNT(*) FROM barber WHERE  email = '" + TextBox1.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(retrievequery, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                conn.Open();
               
                string updatequery = "UPDATE barber SET name='" + TextBox2.Text + "', password='" + TextBox3.Text + "', phone='" + TextBox4.Text + "', country='" + TextBox6.Text + "', city='" + TextBox5.Text + "', location='" + TextBox7.Text + "' WHERE  email='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(updatequery, conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script> alert ('Update Successfully') </script>");
                Server.Transfer("barberdashboardd.aspx");
               



            }
            else
            {
                Response.Write("<script> alert ('Barber does not Exist') </script>");
            }


        }
    }
}