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
		<c:if test="${not empty msg_inclui}">
			<div class="alert alert-success alert-dismissible">
  				<strong>Pronto!</strong> ${msg_inclui}
			</div>
		</c:if>
		  			  			
  		<c:if test="${not empty atratives}">    		  		
  			<h3>Lista dos principais atrativos do Rio: ${atratives.size()}</h3>
		  
		<table class="table table-hover">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Tipo de Atrativo</th>
		        <th></th>
		      </tr>
		    </thead>
		    <tbody>		    
				 <c:forEach  var="locais" items="${atratives}" >
				    <tr>
				      <td>${locais.id}</td>
				      <td>${locais.nome}</td>
				      <td>${locais.tipo}</td>
				      <td><a href="/rio_atrativos/${locais.id}/excluir" >Excluir</a></td>
				      <td><a href="/rio_atrativos/${locais.id}/consultar" >Consultar</a></td>
				    </tr>
				 </c:forEach> 	      
		    </tbody>		    
		  </table>	
		  
		  		<c:if test="${not empty msg}">
		  			<div class="alert alert-success">
  						<strong>Feito!</strong> ${msg}
					</div>		  					  			
		  		</c:if>	
		  		 		  		
		  <h4><a href="/rio_atrativos" >Incluir novo Atrativo</a></h4>
		  	 
		 </c:if>		 
  		
  		 <c:if test="${empty atratives}">
		  	<h3>Nenhum Atrativo cadastrado!</h3>
		  	<h4><a href="/rio_atrativos" >Incluir novo Atrativo</a></h4>		  			  
		 </c:if>  		
	</div> 
	
</body>
</html>
