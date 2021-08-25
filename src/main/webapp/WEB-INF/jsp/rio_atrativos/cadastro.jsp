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
		
		<c:set var="titulo" value= "Cadastramento de Atrativos" />
		<c:set var="rota" value= "/rio_atrativos/incluir" />
		<c:set var="metodo" value= "post" />
		<c:set var="botao" value= "Cadastrar" />
		
		<c:if test="${not empty Atrat}">
			<c:set var="titulo" value= "Consulta de Atrativos" />
			<c:set var="rota" value= "/voltar" />
			<c:set var="metodo" value= "get" />
			<c:set var="botao" value= "Voltar" />			
		</c:if>
				
	<div class="container">
  		
		<h4>${titulo}</h4>

		<form action="${rota}" method="${metodo}">
			<div class="form-group">
				<label>Nome:</label> 
				<input type="text" class="form-control" value="${Atrat.nome}" placeholder="Insira o nome do Atrativo" name="nome">
			</div>
			<div class="form-group">
				<label>Tipo do Atrativo:</label> 
				<input type="text" class="form-control" value="${Atrat.tipo}" placeholder="Insira o tipo do Atrativo" name="tipo">
			</div>
			<button type="submit" class="btn btn-default">"${botao}"</button>
		</form>

	</div> 
	
</body>
</html>
