<div class="serviceHeader">
		<a class="btn btn-md btn-primary" href="?page=gerant&page2=voir-liste-clients" role="button">Voir la liste des clients</a>
		<a class="btn btn-md btn-success" href="?page=gerant&page2=ajout-conseiller" role="button">Ajouter un conseiller</a>
		<a class="btn btn-md btn-warning" href="?page=gerant&page2=audit" role="button">Effectuer un audit</a>
</div>
		<div class="wellContainer">
	<%
		String pageGerant = request.getParameter("page2");
		if (pageGerant != null) {
			switch (pageGerant) {
			case "voir-liste-clients":
	%><%@include file="liste_client.jsp"%>
	<%
		break;
			case "ajout-conseiller":
	%><%@include file="ajout_conseiller.jsp"%>
	<%
		break;
			case "audit":
	%><%@include file="audit.jsp"%>
	<%
		break;
			default:
	%><%@include file="liste_client.jsp"%>
	<%
		break;
			}
		}
	%>
</div>
		