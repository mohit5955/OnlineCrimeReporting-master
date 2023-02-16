using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataReader sdr;//Connected Architecture
    SqlDataAdapter adapt;//Disconnected Achitecture


    int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string connectionString = "Server=localhost;Database=onlinecrimereport;Uid=root;Pwd=;";


        using (MySqlConnection connection = new MySqlConnection(connectionString))
        {
            connection.Open();
            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            command.CommandText = "INSERT INTO register (Name,email,number,gender,password) VALUES (@Name,@email,@number,@gender,@password)";
            command.Parameters.AddWithValue("@Name", TextBox1.Text);
            command.Parameters.AddWithValue("@email", TextBox2.Text);
            command.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Text);
            command.Parameters.AddWithValue("@number", TextBox3.Text);
            command.Parameters.AddWithValue("@password", TextBox4.Text);

            // Execute the command
            int rowsAffected = command.ExecuteNonQuery();

            // Check the number of rows affected to determine if the insert was successful
                if (rowsAffected == 1)
                {
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Label1.Text = "Data not Inserted";

                }
            
            


            // Close the connection
            connection.Close();
        }




    }
}