<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Appli Proxi Banque">
<meta name="author" content="Boris et Laurent">
<title>Proxi Banque SI</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<style>
.navbar-nav>li>.dropdown-menu {
	margin-top: 10;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
	padding: 5px 5px 5px 5px;
}
</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<img class="mb-4 img-circle" src="images/logo.jpg" alt="" width="72"
					height="72">

				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Accueil</a></li>
					<!-- Dropdown -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> Gérant </a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Consulter les comptes</a> <a
								class="dropdown-item" href="#">Auditer</a>
						</div></li>
					<!-- Dropdown -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown"> Conseiller </a>
						<div class="dropdown-menu">
							<div>
								<a class="dropdown-item" href="#">Ajouter un compte client</a>
							</div>
							<div>
								<a class="dropdown-item" href="#">Modifier un compte client</a>
							</div>
							<div>
								<a class="dropdown-item" href="#">Suppimer un compte client</a>
							</div>
						</div></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="deconnexion.jsp">Deconnexion</a></li>
				</ul>

			</div>

			<!--/.nav-collapse -->
		</div>
	</nav>