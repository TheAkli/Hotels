<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Hotel.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="UTF-8">
  <title>THE STAK Hotels</title>
    <meta name="keywords" content="hôtel, reservation luxe, avis">
    <meta name="description" content="The STAK hotels vous propose ses nombreuses chambres de luxe au meilleur prix.">
    <link rel="icon" href="img/favicon.ico">
    <link rel="stylesheet" href="css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div id="contenu">
    <section>
            <nav class="menu-horizontal">
                 <a href="#" onclick="ouvrirMenu()" class="btn-ouvrir"><img src="img/menu.svg" alt="Menu"/></a>
                 <a href="webForm1.aspx" class="logo">STAK Hotel</a>
                 <a href="hotel.aspx">Hôtel</a>
                 <a href="#">Contact</a>
            </nav>

              <header>
                  <h1>Contact</h1><hr/>
              </header>

      <form  class="contact" runat="server" accept-charset="UTF-8" >


    <table class="nav-justified">
        <p style="color: green; font-weight :bold;"> <asp:Literal runat="server" ID="LabelSendOk" />
            <p class="text-danger"style="font-weight :bold;"><asp:Literal runat="server" ID="LabelSendnoOk" /></p>
        <tr>
            <td class="modal-sm" style="width: 134px">Civilité: </td>
            <td>
                <asp:DropDownList ID="DropDownListCivilié" runat="server">
                    <asp:ListItem>Veuillez faire un choix</asp:ListItem>
                    <asp:ListItem>Mme</asp:ListItem>
                    <asp:ListItem>Mlle</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 134px">Nom:</td>
            <td>
                <br />
                <asp:TextBox ID="TextBoxNom" runat="server" Height="30px" Width="250px" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 134px">Prénom:</td>
            <td>
                <br />
                <asp:TextBox ID="TextBoxPrenom" runat="server" Height="30px" Width="250px" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 134px">Adresse mail:</td>
            <td>
                <br />
                <asp:TextBox ID="TextBoxMail" runat="server" Height="30px" TextMode="Email" Width="250px" required ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 134px">Objet:</td>
            <td>
                <br />
                <asp:TextBox ID="TextBoxObjet" runat="server" Height="30px" Width="250px" required ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="height: 23px; width: 134px">Message:</td>
            <td style="height: 23px">
                <br />
                <asp:TextBox ID="TextBoxMessage" runat="server" Height="209px" TextMode="MultiLine" Width="389px" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 134px">&nbsp;</td>
            <td>
                <br />
                <asp:Button ID="ButtonSend" runat="server" Height="34px" OnClick="ButtonSend_Click" style="margin-left: 87" Text="Envoyer" Width="165px" />
                <br />
               
            </td>
        </tr>
    </table>

      </form>
    </section>




     <footer class="footer">
    <ul class="flex-container" id="first-footer">
        <li class="flex-item">
            <h4>CONTACT</h4>
            <i class="fa fa-map-marker" aria-hidden="true"></i> <a href="https://www.google.com/maps/place/Vieux-Port+de+Marseille/@43.2944643,5.3557599,15z/data=!3m1!4b1!4m5!3m4!1s0x12c9c0c6a1843729:0x7d3f3acf189dc3b1!8m2!3d43.2950303!4d5.3646265"> 94 Avenue de l'adresse fictive, 13000 Marseille </a><br><br>
            <i class="fa fa-phone" aria-hidden="true"></i>  02.66.78.80.09<br><br>
            <i class="fa fa-envelope" aria-hidden="true"></i>  STAKhotels@contact.com<br>
        </li>

        <li class="flex-item">
            <h4>HORAIRES D’OUVERTURE</h4>
            <p>Le restaurant de l'hotel STAK est ouvert du mardi au dimanche</p><br>
            <p>Déjeuner 12:00 à 14:30</p>
            <p>Dîner 19:00 à 23:00</p>
        </li>
        <li id ="lien-util" class="flex-item">
            <h4>LIEN UTILES</h4>
            <i class="fab fa-facebook fab-3" aria-hidden="true"></i>
            <i class="fab fa-twitter fab-3" aria-hidden="true"></i>
            <i class="fab fa-google-plus fab-3" aria-hidden="true"></i>
            <i class="fab fa-tripadvisor fab-3" aria-hidden="true"></i>
        </li>
        
    </ul>
    <p class ="end-footer">
        Créé par ADJI Steven & MOKRANE Akli.
    </p>
    </footer>



    </div>

</body>
</html>
