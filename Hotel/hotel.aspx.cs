using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Hotel
{
    public partial class hotel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable Tab = new DataTable();
            Tab.Columns.Add("nom");
            Tab.Columns.Add("img");
            Tab.Columns.Add("description");
            Tab.Columns.Add("capacite");

            MySqlConnection cnn;

            string connetionString;

            connetionString = @"Server=mysql-etu-cergy.alwaysdata.net;Database=etu-cergy_bdd ;User ID=etu-cergy;Password=Akli2019";

            cnn = new MySqlConnection(connetionString);

            cnn.Open();

            MySqlCommand cmdsql;

            MySqlDataReader sqlreader;

            String sql , nom=" ", img=" ", Chambres=" ", description=" ", capacite=" ";

            sql = "SELECT * FROM Chambre";

            cmdsql = new MySqlCommand(sql, cnn);

            sqlreader = cmdsql.ExecuteReader();

            while (sqlreader.Read())
            {
                nom = (string)sqlreader.GetValue(1)+"</br>";
                img = "<img src=/img/chambres/" +sqlreader.GetValue(0) + ".jpg> </br>";
                description = (string)sqlreader.GetValue(2) + "</br>";
                capacite = sqlreader.GetValue(3) + "personnes </br>";






                Chambres = nom + img + description + capacite;
                Tab.Rows.Add(Chambres);
            }

            DataListChambre.DataSource = Tab;

            DataListChambre.DataBind();
            sqlreader.Close();
            cmdsql.Dispose();

            cnn.Close();
        }


    }
}