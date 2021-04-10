using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Hotel.admin
{
    public partial class message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable Tab = new DataTable();
            Tab.Columns.Add("nom");
            Tab.Columns.Add("prenom");
            Tab.Columns.Add("email");
            Tab.Columns.Add("objet");
            Tab.Columns.Add("message");

            MySqlConnection cnn;

            string connetionString;

            connetionString = @"Server=mysql-etu-cergy.alwaysdata.net;Database=etu-cergy_bdd ;User ID=etu-cergy;Password=Akli2019";

            cnn = new MySqlConnection(connetionString);

            cnn.Open();

            MySqlCommand cmdsql;

            MySqlDataReader sqlreader;

            String sql, nom = " ", prenom = " ", Chambres = " ", email = " ", objet = " ", message = " ";

            sql = "SELECT * FROM Contact";

            cmdsql = new MySqlCommand(sql, cnn);

            sqlreader = cmdsql.ExecuteReader();

            while (sqlreader.Read())
            {
                nom = "<p>Nom : </p> " + (string)sqlreader.GetValue(1) + "</br>";
                prenom = "<p>Prenom : </p> " + sqlreader.GetValue(2) + "</br>";
                email = "<p>Email : </p> " + sqlreader.GetValue(3) + "</br>";
                objet = "<p>Objet : </p> " + sqlreader.GetValue(4) + "</br>";
                message = "<p>Message : </p> " + sqlreader.GetValue(5) + "</br><hr/>";







                Chambres = nom + prenom + email + objet + message;
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