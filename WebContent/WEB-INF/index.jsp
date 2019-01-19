<%@ include file="header.jsp"%>

<div class="contenaire">
	<p>Bonjour ${user.name}</p>

	<%
		String activeGerant = "";
		String activeConseiller = "";
		String userType = "";
		// si user non logg�, on le redirige vers la page de login.
		if (session.getAttribute("isLogged") == null || (Boolean) session.getAttribute("isLogged") == false) {
			response.sendRedirect("login");
		}

		if (request.getParameter("page") != null) {
			if (request.getParameter("page").equals("gerant")) {
				activeGerant = "active";
				userType = "gerant";
			} else{
				activeConseiller = "active";
			userType = "conseiller";
			} }
	%>

	<div class="col-lg-12 col-md-12" id="espacepersonnelle"
		style="padding-top: 10px">

		<ul class="nav nav-pills">
			<li class="<%=activeGerant%>"><a href="?page=gerant">G�rant</a></li>
			<li class="<%=activeConseiller%>"><a href="?page=conseiller">Conseiller</a></li>

		</ul>
		<div class="tab-content">
<% 

            switch(userType){
                case "gerant":%><%@include file="gerant.jsp"%><%
                break; 
                default :%><%@include file="conseiller.jsp"%><%
                break; 
            } 

        %>		
		</div>

	</div>

	<!-- form action="addUser" method="post">
		<div class="form-group">
			<label for="email">Nom</label> <input type="text"
				class="form-control" name="name" id="name">
		</div>
		<div class="form-group">
			<label for="pwd">Pr�nom:</label> <input type="text"
				class="form-control" name="firstname" id="firstname">
		</div>

		<button type="submit" class="btn btn-default">Submit</button>
	</form-->
</div>
<%@ include file="footer.jsp"%>
