<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
    <head>
        <title>Pizza Party</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/css/signin.css" rel="stylesheet">
    </head>
    <body>
        <!--barra de navegação-->
        <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="PageController?action=home">Pizza Party</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="PageController?action=">Cardápio</a></li>
                <li><a href="PageController?action=contato">Contato</a></li>
                <li><a href="PageController?action=sobre">Sobre</a></li>
              </ul>
              <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="Buscar Pizza">
                </div>
                <button type="submit" class="btn btn-primary">Pesquisar</button>
              </form>
              <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Minha Conta <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="UserController?action=view">Minha página</a></li>
                    <li class="divider"></li>
                    <li><a href="UserController?action=logout">Sair</a></li>
                  </ul>
                </li>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        
        <!-- Conteúdo -->
        <div class="container">
        
            <c:if test="${page !=  NULL}">
                <c:import url = "${page}"/>
            </c:if>
            
            <c:if test="${page ==  NULL}">
                <c:import url = "home.jsp"/>
            </c:if>

        </div>
        
        <!-- JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        
    </body>
</html>
