<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Turis Rio</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>	
		<c:import url= "/WEB-INF/jsp/menu.jsp" />
				
<div class="container">
  <h2>Turismo no Rio</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
            
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/p_gavea2.jpg" alt="Pedra da Gavea" style="width:100%;">
        <div class="carousel-caption">
          <h3>Pedra da Gávea</h3>
          <p>Aventure-se nas alturas! </p>
        </div>
      </div>
      
      <div class="item">
        <img src="img/Ipanema.jpg" alt="Ipanema" style="width:100%;">
        <div class="carousel-caption">
          <h3>Praias do Rio</h3>
          <p>As praias mais quentes do Rio de Janeiro.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="img/Flying_.jpg" alt="Asa Delta" style="width:100%;">
        <div class="carousel-caption">
          <h3>Vôos Panorãmicos</h3>
          <p>Conheca o Rio de outros ângulos e com mais emoção ainda! </p>
        </div>
      </div> 
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>
