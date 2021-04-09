<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hotel.aspx.cs" Inherits="Hotel.hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>The STAK Hotel</title>
    <meta name="keywords" content="hôtel, reservation, luxe, avis"/>
    <meta name="description" content="STAK Hotel vous propose ses nombreuses chambres de luxe au meilleur prix."/>
    <link rel="icon" href="img/favicon.ico"/>
    <link rel="stylesheet" href="css/style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body runat="server">
      <nav class="menu-horizontal">
        <a href="#" onclick="ouvrirMenu()" class="btn-ouvrir"><img src="img/menu.svg" alt="Menu"/></a>
        <a href="webForm1.aspx" class="logo">STAK Hotel</a>
    <a href="#">Hôtel</a>
    <a href="#">Contact</a>
    </nav>

	<div id="contenu"> 
       <div id="carousel">
            <figure>			
                <img src="img/hotel/chambre-1.jpg" alt="Chambre 1"/>
                <img src="img/hotel/chambre-2.jpg" alt="Chambre 2"/>
                <img src="img/hotel/chambre-3.jpg" alt="Chambre 3"/>
                <img src="img/hotel/chambre-4.jpg" alt="Chambre 4"/>
            </figure>
        </div>
	<div class="reservation" id="resahotel">
    <form class="flex-container" accept-charset="UTF-8">
            <div class="flex-item">
		        <label for="dateArrivee"><strong>Date d'arrivée</strong></label>
		        <input type="date" name="dateArrivee" id="dateArrivee" class="form-control" required/>
	           </div>
	           <div class="flex-item">
                   <label for="dateDepart"><strong>Date de départ</strong></label>
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
		</form>

		</div>

		<section>
			<div class="chambre">
				<header>
					<h1>Les chambres :</h1><hr/>
				</header>
				 
                <asp:DataList ID="DataListChambre" runat="server">
					 <ItemTemplate>
						<table>
							<tr>
								<td>
									
										<span class="nom"><%#Eval("nom") %></span>
										<span class="img"><%#Eval("img") %></span>
										<span class="description"><%#Eval("description") %></span>
										<span class="capacité"> <%#Eval("capacite") %></span>
								</td>
							</tr>
						</table>
					 </ItemTemplate>
                </asp:DataList>


			</div>
         


		</section>
    
	
	</div>
	
    



</body>
</html>
