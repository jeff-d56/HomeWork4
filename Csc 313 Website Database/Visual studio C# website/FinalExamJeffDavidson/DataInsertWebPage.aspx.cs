using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace FinalExamJeffDavidson
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        private int NewCustNum;
        private int NewOrderNum;
        private MySqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            
            try
            {
                //User Validation that will out put requried in a label next to what is blank and will not enter into the database if false
                bool userValidationError = true;
                if (custFName.Text == "")
                {
                    custFNameLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custFNameLab.Text = "";
                }
                if (custLName.Text == "")
                {
                    custLNameLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custLNameLab.Text = "";
                }
                if (custPhone.Text == "")
                {
                    custPhoneLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custPhoneLab.Text = "";
                }
                if (custAddressOne.Text == "")
                {
                    custAddressOneLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custAddressOneLab.Text = "";
                }
                if (custAddressTwo.Text == "")
                {
                    custAddressTwoLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custAddressTwoLab.Text = "";
                }
                if (custCity.Text == "")
                {
                    custCityLab.Text = "Requried"; ;
                    userValidationError = false;
                }
                else
                {
                    custCityLab.Text = "";
                }
                if (custZip.Text == "")
                {
                    custZipLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custZipLab.Text = "";
                }
                if (custCountryDropDown.Text == "Select")
                {
                    custCountryDropDownLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custCountryDropDownLab.Text = "";
                }
                if (custStateDropDown.Text == "Select")
                {
                    custStateDropDownLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custStateDropDownLab.Text = "";
                }
                if (custQuantity.Text == "")
                {
                    custQuantityLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custQuantityLab.Text = "";
                }
                if (custHeight.Text == "")
                {
                    custHeightLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custHeightLab.Text = "";
                }
                if (custWidth.Text == "")
                {
                    custWidthLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custWidthLab.Text = "";
                }
                if (custLength.Text == "")
                {
                    custLengthLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custLengthLab.Text = "";
                }
                if (custCarpetDropDown.Text == "Select")
                {
                    custCarpetDropDownLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custCarpetDropDownLab.Text = "";
                }
                if (custWoodDropDown.Text == "Select")
                {
                    custWoodDropDownLab.Text = "Requried";
                    userValidationError = false;
                }
                else
                {
                    custWoodDropDownLab.Text = "";
                }


                // start of database query check if validation is correct

                if (userValidationError == true)
                {
                    //connect to database
                    string connStr = "server=localhost;user=root;database=dogstairsinc;port=3306;password='';";
                    MySqlConnection conn = new MySqlConnection(connStr);

                    try
                    {
                        //open connection to database
                        conn.Open();

                        try
                        {
                            // get max customer number then add one to it to set customer id
                            cmd = new MySqlCommand("SELECT MAX(customerNumber) FROM customer;", conn);

                            // check if max customer number is null
                            var result = cmd.ExecuteScalar();
                            if (result.ToString() == "")
                            {
                                NewCustNum = 1;
                            }
                            else
                            {
                                NewCustNum = Convert.ToInt32(result) + 1;
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Something went wrong error code 0001");
                        }

                        try
                        {
                            // insert customer information into database
                            cmd = new MySqlCommand("INSERT INTO customer (customerNumber, customerFName, customerLName, phone, addressLine1, addressLine2, city, state, postalCode, country) VALUES (@cn, @cfn, @cln, @cp, @cao, @cat, @cc, @csdd, @cz, @ccdd); ", conn);

                            cmd.Parameters.AddWithValue("@cn", NewCustNum);
                            cmd.Parameters.AddWithValue("@cfn", custFName.Text);
                            cmd.Parameters.AddWithValue("@cln", custLName.Text);
                            cmd.Parameters.AddWithValue("@cp", custPhone.Text);
                            cmd.Parameters.AddWithValue("@cao", custAddressOne.Text);
                            cmd.Parameters.AddWithValue("@cat", custAddressTwo.Text);
                            cmd.Parameters.AddWithValue("@cc", custCity.Text);
                            cmd.Parameters.AddWithValue("@csdd", custStateDropDown.Text);
                            cmd.Parameters.AddWithValue("@cz", custZip.Text);
                            cmd.Parameters.AddWithValue("@ccdd", custCountryDropDown.Text);

                            cmd.ExecuteNonQuery();

                        }
                        catch (Exception ex)
                        {
                            Response.Write("Something went wrong error code 0002");
                        }


                        try
                        {
                            // same as custNumber but for orderNumber
                            cmd = new MySqlCommand("SELECT MAX(orderNumber) FROM orders;", conn);

                            var resultOrder = cmd.ExecuteScalar();

                            if (resultOrder.ToString() == "")
                            {
                                NewOrderNum = 1;
                            }
                            else
                            {
                                NewOrderNum = Convert.ToInt32(resultOrder) + 1;
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Something went wrong error code 0003");
                        }

                        try
                        {
                            //insert into orders the values entered
                            cmd = new MySqlCommand("INSERT INTO ORDERS (orderNumber, orderDate, shippedDate, STATUS, comments, customerNumber) VALUES (@on, @od, @sd, @st, @c, @ocn); ", conn);

                            //bind
                            cmd.Parameters.AddWithValue("@on", NewOrderNum);
                            cmd.Parameters.AddWithValue("@od", DateTime.Now);
                            cmd.Parameters.AddWithValue("@sd", null);
                            cmd.Parameters.AddWithValue("@st", "Not Shipped");
                            cmd.Parameters.AddWithValue("@c", custComments.Text);
                            cmd.Parameters.AddWithValue("@ocn", NewCustNum);

                            //execute insert
                            cmd.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Something went wrong error code 0004");
                        }

                        try
                        {
                            //insert into orderdetails info about ramp
                            cmd = new MySqlCommand("INSERT INTO orderdetails(orderNumber, quantityOrdered, stairHeight, stairWidth, stairLength, hasCarpet, typeWood, price) VALUES (@odon, @odcq, @odch, @odcw, @odcl, @odcc, @odcwdd, @odp);", conn);

                            cmd.Parameters.AddWithValue("@odon", NewOrderNum);
                            cmd.Parameters.AddWithValue("@odcq", custQuantity.Text);
                            cmd.Parameters.AddWithValue("@odch", custHeight.Text);
                            cmd.Parameters.AddWithValue("@odcw", custWidth.Text);
                            cmd.Parameters.AddWithValue("@odcl", custLength.Text);
                            cmd.Parameters.AddWithValue("@odcc", custCarpetDropDown.Text);
                            cmd.Parameters.AddWithValue("@odcwdd", custWoodDropDown.Text);
                            cmd.Parameters.AddWithValue("@odp", new Random().Next(100, 201));

                            cmd.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Something went wrong error code 0005");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }

                    //close connection with database
                    conn.Close();

                    //save order number and redirect to another page so refresh wont rerun the query
                    Response.Cookies["User"]["Value1"] = NewOrderNum.ToString();
                    Response.Cookies["User"].Expires = DateTime.Now.AddSeconds(10);
                    Response.Redirect("WebForm4.aspx");
                }//end of query if statment
            }//end of main try
            catch (Exception ex)
            {
                Response.Write("error with name");
            }//main trys catch
        }//end of add button click
    }//end of main
}//end of namespace