<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="Hotel.admin.message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>The STAK hotels - Administration</title>
    <link rel="icon" href="../img/favicon.ico"/>
    <link rel="stylesheet" href="../css/style.css"/>
	<link href='../css/fullcalendar.min.css' rel='stylesheet' />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<style>
	 p{
		 color: darkred;
	 }
	</style>

</head>
<body>

    <header>
      <nav class="menu-horizontal">
        <a href="#" onclick="ouvrirMenu()" class="btn-ouvrir"><img src="/img/menu.svg" alt="Menu"/></a>
        <a href="default.aspx" class="logo">Administration</a>
        <a href="message.aspx" class="liens">Messages</a>
        <a href="#">Retourner sur le site</a>
      </nav>
</header>


    <div id="contenu"> 

        <header>
				<h2>Bonjour !</h2>
			<div>Vous pouvez ici Lire les messges de vos clients</div>
			</header>
			
			


        
		<section>
			<div class="chambre">
				<header>
					<h1>Messages</h1><hr/>
				</header>
				 
                <asp:DataList ID="DataListChambre" runat="server">
					 <ItemTemplate>
						<table>
							<tr>
								<td>
										
										<span class="nom"><%#Eval("nom") %></span>
										<span class="prenom"><%#Eval("prenom") %></span>
										<span class="emai"><%#Eval("email") %></span>
										<span class="objet"><%#Eval("objet") %></span>
										<span class="message"> <%#Eval("message") %></span>
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
