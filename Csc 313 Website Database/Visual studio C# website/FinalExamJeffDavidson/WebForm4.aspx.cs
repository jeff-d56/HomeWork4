﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExamJeffDavidson
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User"] != null)
            {

                Label1.Text = Request.Cookies["User"]["Value1"];

            }
            else
            {
                Label1.Text = "";
            }
        }

        
    }
}