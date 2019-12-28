<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String ctxPath = request.getContextPath(); %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
    <title>Registration</title>
    <style>
        #register-form span {
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }
        .header-spacer{
            margin-top: 55px;
        }
    </style>
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


<div class="container header-spacer">
	<div>	
		
	</div>

    <div class="page-header">
        <h3>Register
            <small>a prof</small>
        </h3>
    </div>

    <div class="row">
        <div class="col-lg-12">

            <form:form id="register-form" action="/register" method="post" modelAttribute="profForm">

                <div class="form-group">
                    <label for="first">First name</label>
                    <form:input path="firstName" type="text" class="form-control" id="first" placeholder="First name"/>
                    <form:errors path="firstName"/>
                </div>
                <div class="form-group">
                    <label for="last">Last name</label>
                    <form:input type="text" class="form-control" id="last" path="lastName" placeholder="Last name"/>
                    <form:errors path="lastName"/>
                </div>
                <div class="form-group">
                    <label for="email">Email address</label>
                    <form:input type="text" class="form-control" id="email" path="email" placeholder="Email"/>
                    <form:errors path="email"/>
                </div>
                <div class="form-group">
                    <label for="login">Login</label>
                    <form:input type="text" class="form-control" id="login" path="login" placeholder="Login"/>
                    <form:errors path="login"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <form:input type="password" class="form-control" id="password" path="password"
                                placeholder="Password"/>
                    <form:errors path="password"/>
                </div>
                <button type="submit" class="btn btn-primary">Register Now</button>

            </form:form>
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