using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace FinalExamJeffDavidson
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void QueryWebButton_Click(object sender, EventArgs e)
        {
            string connStr = "server=localhost;user=root;database=dogstairsinc;port=3306;password='';";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                
                conn.Open();

                MySqlCommand cmd = new MySqlCommand("SELECT os.orderNumber as 'Order Number', os.quantityOrdered as 'Quantity Ordered', o.orderDate as 'Order Date', o.shippedDate as 'Shipped Date', o.status as 'Status', o.comments as 'Comments' , os.stairHeight as 'Stair Height', os.stairWidth as 'Stair Width' , os.stairLength as 'Stair Length', os.hasCarpet as 'Carpet Included', os.typeWood as 'Wood Type', os.price as 'Total Price' FROM orders o JOIN orderdetails os ON o.orderNumber = os.orderNumber JOIN customer c ON o.customerNumber = c.customerNumber WHERE o.orderNumber = @on;", conn);
               
                cmd.Parameters.AddWithValue("@on", orderNum.Text);

                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                
                
                GridView1.DataSource = ds;
                GridView1.DataBind();

                cmd = new MySqlCommand("SELECT c.customerFName as 'First Name', c.customerLName as 'Last Name', c.phone 'Phone Number', c.addressLine1 as 'Address 1' , c.addressLine2 as 'Address 2', c.city as 'City', c.state as 'State', c.postalCode as 'Area Code', c.country as 'Country' FROM customer c JOIN orders o ON c.customerNumber = o.customerNumber WHERE o.orderNumber = @on", conn);

                cmd.Parameters.AddWithValue("@on", orderNum.Text);

                adp = new MySqlDataAdapter(cmd);
                ds = new DataSet();
                adp.Fill(ds);


                GridView2.DataSource = ds;
                GridView2.DataBind();

                orderNum.Text = string.Empty;
                

            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }

            conn.Close();

            
            
        }

        

    }
}