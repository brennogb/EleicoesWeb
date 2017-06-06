<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="br.estacio.eleicoesweb.entidades.Candidato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

	<% List<Candidato> candidatos = (List<Candidato>) session.getAttribute("listaCandidatos"); 
		Integer totalVotosEleicao = (Integer) session.getAttribute("totalEleicao");
	%>

	<head>
    	<meta charset="utf-8"/>
    	<meta name="description" content="Trabalho de Sistemas Webs para eleições genéricas. Onde podem ser cadastrados candidatos à eleição, eleitores e sempre que necessário, acompanhar o andamento dos votos.">
    	<meta name="keywords" content="Java,HTML,CSS,XML,JavaScript">
    	<meta name="author" content="Brenno Gomes e Riva Junior">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	
		<title>Estatísticas da Eleição</title>
		
		<!-- Favcons para navegadores desktop -->
		<link rel="icon" href="resources/img/favicon-16x16.png" sizes="16x16">
		<link rel="icon" href="resources/img/favicon-32x32.png" sizes="32x32">
		<link rel="icon" href="resources/img/favicon-48x48.png" sizes="48x48">
		<link rel="icon" href="resources/img/favicon-64x64.png" sizes="64x64">
		<link rel="icon" href="resources/img/favicon-128x128.png" sizes="128x128">
		
		<!-- iPad iOS7+ com Retina Display -->
		<link rel="apple-touch-icon" sizes="152x152" href="resources/img/apple-touch-icon-152x152.png">
		<!-- iPhone iOS7+ com Retina Display -->
		<link rel="apple-touch-icon" sizes="120x120" href="resources/img/apple-touch-icon-120x120.png">
		<!-- iPad iOS7+ sem retina display e iPad Mini-->
		<link rel="apple-touch-icon" sizes="76x76" href="resources/img/apple-touch-icon-76x76.png">
		<!-- iPhone iOS7-, iPod Touch e Android 2.2+  -->
		<link rel="apple-touch-icon" href="resources/img/apple-touch-icon.png">
		
		<!-- Tiles para windows phone -->
		<meta name="msapplication-TileImage" content="resources/img/tile.png"/>
		
    	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
    	<link href="resources/css/style.css" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="cabecalho.jsp" flush="true"/>
	
		<h1 class="text-center">Estatísticas da Eleição</h1>
		
		<table class="table">
  			<thead>
    			<tr>
      				<th>#</th>
      				<th>Candidato</th>
      				<th>Total de votos</th>
      				<th>Percentual</th>
    			</tr>
 	 		</thead>
  			<tbody>
    			<% for (Candidato candidato : candidatos) { %>
    				<tr>
    					<td></td>
      					<td><%= candidato.getNome() %></td>
      					<td><%= candidato.getVotos() %></td>
      					<% 
      						DecimalFormat df = new DecimalFormat("#.00");
      						float percent = (((float)candidato.getVotos() / totalVotosEleicao) * 100);
      						String percentualVoto = df.format(percent) + "%";
      					%>
      					<td><%= percentualVoto %></td>
    				</tr>
    			<% } %>
  			</tbody>
		</table>
		Total de votos da eleição: <%= totalVotosEleicao %>

		<jsp:include page="rodape.jsp" flush="true"/>
		
	</body>
</html>