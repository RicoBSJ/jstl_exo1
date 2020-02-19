<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Traitement des données</title>
</head>
<body>
	<p>
		<b>Vous avez renseigné les informations suivantes :</b>
	</p>

	<%-- Parcourt l'objet implicite paramValues qui, souvenez-vous, est une Map,
      pour traiter chaque paramètre de la requête --%>
		<c:forEach var="parametre" items="${ paramValues }">
			<ul>
				<%-- Affiche la clé de la Map paramValues,
            	qui correspond concrètement au nom du paramètre. --%>
            	<li><b><c:out value="${ parametre.key }" /></b> :</li>
            	<%-- Parcourt le tableau de String[] associé à la clé traitée, 
            	qui correspond à la liste de ses valeurs. --%>
            	<c:forEach var="value" items="${ parametre.value }">
            		<%-- Affiche chacune des valeurs pour la clé donnée --%>
            		<c:out value="${ value }" />
            	</c:forEach>
			</ul>
		</c:forEach>

	<p>
		<b>Vous vous nommez :</b>
	</p>
	<p>
		<%-- Affiche les valeurs des paramètres nom et prenom --%>
	</p>

	<p>
		<b>Vous avez visité les pays suivants :</b>
	</p>
	<p>
		<%-- Teste l'existence du paramètre pays. S'il existe on le traite, 
	    sinon on affiche un message par défaut.--%>

		<%-- Teste l'existence du paramètre autre. Si des données existent on les traite, 
	    sinon on affiche un message par défaut.--%>
	</p>
</body>
</html>