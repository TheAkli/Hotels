<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Hotel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HOTEL STAK</title>
    <link rel="stylesheet" href="css/style.css"/>

</head>
<body>
  
    <nav class="menu-horizontal">
        <a href="#" onclick="ouvrirMenu()" class="btn-ouvrir"><img src="img/menu.svg" alt="Menu"/></a>
        <a href="webForm1.aspx" class="logo">STAK Hotel</a>
    <a href="hotel.aspx">Hôtel</a>
    <a href="#">Contact</a>
    </nav>

    <div id="contenu">
		<section class="image-cover">
		  <h1 class="titre">Une de nos plus belles chambres</h1>
		  <div style="height: 70px;">
			<a href="#description"><span class="fleche-animee"></span></a>
		  </div>
			 <div class="reservation">


        <form class="flex-container" accept-charset="UTF-8" >
            <div class="flex-item">
		        <label for="dateArrivee"><strong>Date d'arrivée</strong></label>
		        <input type="date" name="dateArrivee" id="dateArrivee" class="form-control" required/>
	           </div>
	           <div class="flex-item">
		        <label for="dateDepart" ><strong>Date de départ</strong></label>
		        <input type="date" name="dateDepart" id="dateDepart" class="form-control" required/>
	           </div>
	           <div class="flex-item">
		        <label for="personne"><strong>Personnes</strong></label>
			        <select class="form-control" id="personne" name="personne">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				        <option>5</option>
			        </select>
	          </div>
	  <div class="flex-item">
		<button type="submit" class="form-control"><strong>Rechercher</strong></button>
      </div>
</form >			

			 </div>
		</section>
	      <section>
              <div id="description">
                  <h1 class="titre">Bienvenue au STAK <br/> 
                  Hôtel</h1><hr/>
                  <p>STEVEN et AKLI ONT LE PLAISIR DE VOUS ACCUEILLIR</p>
                    <div class="column">
                            <h2>Hotel <span class="chiffre">4****</span> en bord de mer pour votre séjours</h2>
                            <p>STAK Hotel, aura le plaisir de vous accueilleir pour un séjour de détente à deux pas de la plage, à 20 minutes de voiture de l’aéroport et de la gare des trains. Cet hôtel 4 étoiles est facilement accessible en taxi ou en bus. Les voyageurs qui arrivent en voiture disposent d’un parking public et gratuit hors saison, situé face à l’hôtel. Ses chambres spacieuses et baignées de lumière sont décorées dans le style « bord de mer » . L’hôtel met à votre disposition son salon d’affaires pour vos rencontres professionnelles.</p>
                    
                            <h2>Des chambres claires spacieuses</h2>
                            <p>De catégorie Classique ou Supérieure, nos chambres peuvent accueillir de 2 à 6 personnes et se dotent d’une salle de bain privative possédant des douches à l’italienne avec sèche-cheveux . Depuis la terrasse, vous profiterez d’une vue sur la mer ou sur l’Etang-Canigou. Un coffre-fort est disponible. Situées aux 4e, 5e et 6e étages de l’établissement, les chambres Supérieure offrent en prime le confort de peignoirs, de chaussons et de produits de toilette gratuits Algotherme. Dans ces dernières, vous bénéficierez également d’une machine Nespresso.</p>
                        
                            <h2>Petit-déjeuner et restauration</h2>
                            <p>Dès les premières heures de la journée, que vous souhaitiez profiter de notre salle à manger ensoleillée ou que vous préfériez savourer votre petit-déjeuner au lit, toutes les options sont permises. En buffet ou directement dans votre chambre, vous vous délecterez d’un délicieux assortiment de mets sucrés et salés.</p>
                            
                            <h2>Pour un sejour reussi</h2>
                            <p>Notre personnel parlant français, anglais, espagnol et allemand, vous accueille à la réception ouverte 24h/24 de notre hôtel près de l’aéroport de Perpignan. Pour satisfaire au mieux vos exigences, un business corner avec ordinateur, un service de bagagerie et de cireur, et une douche sont à votre disposition.</p>
                        
                            <h2>Détendez vous a deux pas de la plage</h2>
                            <p>Notre hôtel à Canet-en-Roussillon offre aussi bien des espaces de détente que de travail, ce qui en fait le lieu idéal où séjourner pour vos affaires comme pour vos loisirs. Organisez vos séminaires d’entreprises ou vos conférences dans le salon « le Sardinal », qui accueille de 15 à 25 personnes selon la disposition souhaitée (en U ou en théâtre). Pendant vos moments de pause, sirotez cocktails ou boissons fraîches dans notre bar ouvert de 7h à 2h, adonnez-vous aux nombreuses activités nautiques disponibles au port de Canet, ou détendez-vous sur la plage. Les animaux domestiques sont acceptés sous certaines conditions.</p>
                  </div>

                </div>
              
		</section>

		<div id="carte"></div>
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
