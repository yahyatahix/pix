<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<html lang="en">
<% String ctxPath = request.getContextPath(); %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>

    <!-- Custom CSS -->
    <link href="/css/theme.css" rel="stylesheet">
    <title>Login</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/">MonProf</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <c:choose>
                    <c:when test="${sessionScope.auth == null}">
                        <li>
                            <a href="/register">Register</a>
                        </li>
                        <li>
                            <a href="/login">Login</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="/logout">Logout</a>
                            
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
            <div class="nav navbar-nav navbar-right">
                <table class="navbar-brand">
                    <tr>
                     
                </table>
            </div>
        </div>
        <!-- /.navbar-collapse -->

    </div>
    <!-- /.container -->
</nav>

<!--  tag:header headerData="${headerDTO}"/-->

<div class="container header-spacer">
	

    <div class="page-header">
    	<br>
    	
        <h3>Login
            <small>as prof</small>
        </h3>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-login">
                <div class="panel-body">
                    <form:if test="${not empty loginError}">
                        <div class="alert alert-danger">Wrong user or password</div>
                    </form:if>
                    <form:if test="${registration}">
                        <div class="alert alert-success">Registration successfully</div>
                    </form:if>
                   
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="login-form" action="/login" method="post" role="form"
                                  style="display: block;">
                                <div class="form-group">
                                    <input type="text" name="login" id="login" tabindex="1"
                                           class="form-control" placeholder="Your login" value=""/>
                                </div>
                                <div class="form-group">
                                    <input type="password" name="password" id="password"
                                           tabindex="2" class="form-control" placeholder="Your Password"/>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-sm-6 col-sm-offset-3">
                                            <input type="submit" name="login-submit" id="login-submit"
                                                   tabindex="4" class="form-control btn btn-login"
                                                   value="Log In"/>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="referer" value="${Referer}">
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <tag:footer/>
</div>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</body>
</html>