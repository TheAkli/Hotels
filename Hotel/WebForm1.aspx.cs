using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Hotel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            MySqlConnection cnn;

            string connetionString;

            connetionString = @"Server=mysql-etu-cergy.alwaysdata.net;Database=etu-cergy_bdd ;User ID=etu-cergy;Password=Akli2019";

            cnn = new  MySqlConnection(connetionString);

            cnn.Open();

            //Response.Write("Connection Réussie");
      



            cnn.Close();

        }

    }
}