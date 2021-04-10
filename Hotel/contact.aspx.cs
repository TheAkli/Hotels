using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;



namespace Hotel
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection cnn;

            string connetionString;

            connetionString = @"Server=mysql-etu-cergy.alwaysdata.net;Database=etu-cergy_bdd ;User ID=etu-cergy;Password=Akli2019";

            cnn = new MySqlConnection(connetionString);

            cnn.Open();

            //Response.Write("Connection Réussie");




            cnn.Close();

        }

        protected void ButtonSend_Click(object sender, EventArgs e)
        {
            if (TextBoxNom.Text != "" && TextBoxPrenom.Text != "" && TextBoxMail.Text != "" && TextBoxObjet.Text != "" && TextBoxMessage.Text != "")
            {
                string connetionString;
                connetionString = @"Server=mysql-etu-cergy.alwaysdata.net;Database=etu-cergy_bdd ;User ID=etu-cergy;Password=Akli2019";


                MySqlConnection cnn = new MySqlConnection(connetionString);

                cnn.Open();

                MySqlCommand command;
                MySqlDataAdapter adapter = new MySqlDataAdapter();

                String sql = "INSERT INTO `Contact`(Id_Contact,Nom,Prenom,Email,Objet, Message) VALUES('', @_nom , @_prenom ,@_Mail, @_objet_msg , @_message )";

                command = new MySqlCommand(sql, cnn);

                adapter.InsertCommand = command;

                command = new MySqlCommand(sql, cnn);

                adapter.InsertCommand = command;

                command.Parameters.AddWithValue("@_nom", TextBoxNom.Text);
                command.Parameters.AddWithValue("@_prenom", TextBoxPrenom.Text);
                command.Parameters.AddWithValue("@_Mail", TextBoxMail.Text);
                command.Parameters.AddWithValue("@_objet_msg", TextBoxObjet.Text);
                command.Parameters.AddWithValue("@_message", TextBoxMessage.Text);

                adapter.InsertCommand.ExecuteNonQuery();
                command.Dispose();

                LabelSendnoOk.Text = " ";
                LabelSendOk.Text = "Nous avons bien reçue votre message, nous allons vous répondre très prochainement! ";

                TextBoxNom.Text = " ";
                TextBoxPrenom.Text = " ";
                TextBoxMail.Text = " ";
                TextBoxObjet.Text = " ";
                TextBoxMessage.Text = " ";

                cnn.Close();

            }

            else
            {
                LabelSendnoOk.Text = "Veuillez remplir tous les champs! ";

            }

        }
    }
}