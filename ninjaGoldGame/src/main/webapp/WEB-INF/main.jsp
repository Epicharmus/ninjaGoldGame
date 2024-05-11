<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Ninja Gold Game</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar navbar-light bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">
	      <img src="https://png.pngtree.com/png-clipart/20231208/original/pngtree-drachma-coin-global-photo-png-image_13792950.png" alt="" width="30" height="30" class="d-inline-block align-text-top">
	      Your Gold: <c:out value = "${ gold }" />
	    </a>
	    <form action = "/reset" class="d-flex">
	      <button class="btn btn-outline-primary" type="submit">Restart</button>
	    </form>
	  </div>
	</nav>
	<div class="d-flex flex-row p-2 justify-content-around">
		<div class="card p-2" style="width: 20%;">
	  		<img class="card-img-top" src="https://static.vecteezy.com/system/resources/previews/022/190/496/original/mythology-greece-religion-set-concept-mythological-religious-ancient-greek-series-of-demigod-heracles-free-prometheus-or-poet-orpheus-in-hades-underworld-and-opening-of-pandora-box-illustration-vector.jpg" alt="Card image cap">
	  		<div class="card-body">
	    		<h5 class="card-title">Quest</h5>
	    		<p class="card-text">(Earns or takes 0-50 gold)</p>
	    		<form action="/submit" method="GET">
	    			<div>
						<button type="submit" class="btn btn-primary">Find Gold!</button>
					</div>
					<input type="hidden" name="location" value="quest"></input>
	    		</form>
	 	 	</div>
		</div>
		<div class="card p-2" style="width: 20%;">
	  		<img class="card-img-top" src="https://png.pngtree.com/png-clipart/20230925/original/pngtree-farm-banner-sketch-cow-chickens-and-a-rooster-graze-vector-png-image_12680106.png" alt="Card image cap">
	  		<div class="card-body">
	    		<h5 class="card-title">Farm</h5>
	    		<p class="card-text">(Earns 10-20 gold)</p>
	    		<form action="/submit" method="GET">
	    			<div>
						<button type="submit" class="btn btn-primary">Find Gold!</button>
					</div>
					<input type="hidden" name="location" value="farm"></input>
	    		</form>
	 	 	</div>
		</div>
		<div class="card p-2" style="width: 20%;">
	  		<img class="card-img-top" src="https://img.freepik.com/premium-photo/banner-background-monsters-cave-ent-mobile-wallpaper_879987-5018.jpg" alt="Card image cap">
	  		<div class="card-body">
	    		<h5 class="card-title">Cave</h5>
	    		<p class="card-text">(Earns 5-10 gold)</p>
	    		<form action="/submit" method="GET">
	    			<div>
						<button type="submit" class="btn btn-primary">Find Gold!</button>
					</div>
					<input type="hidden" name="location" value="cave"></input>
	    		</form>
	 	 	</div>
		</div>
		<div class="card p-2" style="width: 20%;">
	  		<img class="card-img-top" src="https://www.creativefabrica.com/wp-content/uploads/2023/09/11/Acropolis-Ancient-Greek-City-Landmark-Graphics-79006544-1-580x387.jpg" alt="Card image cap">
	  		<div class="card-body">
	    		<h5 class="card-title">House</h5>
	    		<p class="card-text">(Earns 2-5 gold)</p>
	    		<form action="/submit" method="GET">
	    			<div>
						<button type="submit" class="btn btn-primary">Find Gold!</button>
					</div>
					<input type="hidden" name="location" value="house"></input>
	    		</form>
	 	 	</div>
		</div>
	</div>
	<div class="d-flex flex-row p-2 justify-content-around">
		<div class="card p-2" style="width: 90%;">
	  		<div class="card-body">
	    		<h5 class="card-title">Your Actions</h5>
	    		<c:forEach var="action" items="${actions}">
					<p class="card-text">
						<c:out value="${action}"></c:out>
					</p>
				</c:forEach>
	    		
	    		
	    		<img class="card-img-bottom" src="https://www.greekboston.com/wp-content/uploads/2016/12/Black-Figure-Pottery-900x478.jpg" alt="Card image cap">
	 	 	</div>
		</div>
	</div>
</body>
</html>