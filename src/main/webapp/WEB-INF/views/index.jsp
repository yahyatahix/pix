<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>monProf Website</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>

    <!-- Custom CSS -->
    <link href="/css/style.css" rel="stylesheet">
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

<!-- Page Content -->
<div class="container">

    <div class="jumbotron">
        <h1>Bienvenue Komoro</h1>
        <p>Welcome to our new online ...! Thanks for coming along to check out our new website.
            We hope that you'll be able to find all the things here that you like so much in the ...,
            but now be able to order them when getting to us is proving a bit of a challenge.
        </p>
    </div>
    
    
    <!-- Echantillon 
*
*
*
-->
    <div class="hide-cadre-echantillon ">
<div class="container margin-top-30">
<div class="row ">
<div class="  col-12 col-sm-12 col-md-12  col-lg-12 col-xl-12 ">
<h2 id="H2_15xx">
<i class="fa fa-trophy" style="color:gold; font-size:27px;" aria-hidden="true"></i> Les cours de soutien disponible :
</h2>
<a target="_blank" href="https://www.oneprof.ma/o/1564730/professeur-des-matieres-litteraire">
<div class="  col-3 col-sm-3 col-md-3  col-lg-3 col-xl-3 padding-left-zero">
<div class="card-c border-radius-101 box-shadow-101 border-none box-shadow-101-hover">
<div class="box-c">
<div class="img-c">
</div>
<h2 id="span-name">
Ahmed
<br>
<div class="stars" style="font-size:16px; " data-rating="2" data-num-stars="5" title="Note professeur"> </div>
<br>
<span id="span-subject" style="background-color: #37d236;">Arabe</span>
<br>
<span id="span-city" style="background-color: #1ebfe8;">Rabat</span>
</h2>
<div class="prix-annonce-black color-price-101" title="Prix par heure" style="font-size:25px;">
98 <sub>Dh/h</sub>
</div>
</div>
</div>
</div>
</a>
<a target="_blank" href="https://www.oneprof.ma/o/1571175/professeur-agrege-donne-des-cours-de-soutien-universitaire-pour-les-etudiants-des-classes-prepa-et-toute-les-etablissement-superieur">
<div class="  col-3 col-sm-3 col-md-3  col-lg-3 col-xl-3 padding-left-zero">
<div class="card-c border-radius-101 box-shadow-101 border-none box-shadow-101-hover">
<div class="box-c">
<div class="img-c">
<img src="https://s3-eu-west-1.amazonaws.com/oneprof.ma/public/avatar/2n7FsP5PdfOl1X85mPhwbwWrV.png" alt="hamza" />
</div>
<h2 id="span-name">
Hamza
<br>
<div class="stars" style="font-size:16px; " data-rating="3.1" data-num-stars="5" title="Note professeur"> </div>
<br>
<span id="span-subject" style="background-color: #37d236;">Physique - Chimie, Logique mathématique, Chimie organique</span>
<br>
<span id="span-city" style="background-color: #1ebfe8;">Casablanca</span>
</h2>
<div class="prix-annonce-black color-price-101" title="Prix par heure" style="font-size:25px;">
10 <sub>Dh/h</sub>
</div>
</div>
</div>
</div>
</a>
<a target="_blank" href="https://www.oneprof.ma/o/1570043/prof-de-math-donne-des-cours-aux-etudiants-de-3-eme-annee-college-a-fes">
<div class="  col-3 col-sm-3 col-md-3  col-lg-3 col-xl-3 padding-left-zero">
<div class="card-c border-radius-101 box-shadow-101 border-none box-shadow-101-hover">
<div class="box-c">
<div class="img-c">
<img src="https://s3-eu-west-1.amazonaws.com/oneprof.ma/public/avatar/QDWCFEp0TmKGq6agJs95LkWfK.png" alt="imane" />
</div>
<h2 id="span-name">
Imane
<br>
<div class="stars" style="font-size:16px; " data-rating="2.9" data-num-stars="5" title="Note professeur"> </div>
<br>
<span id="span-subject" style="background-color: #37d236;">Maths</span>
<br>
<span id="span-city" style="background-color: #1ebfe8;">Fes</span>
</h2>
<div class="prix-annonce-black color-price-101" title="Prix par heure" style="font-size:25px;">
50 <sub>Dh/h</sub>
</div>
</div>
</div>
</div>
</a>
<a target="_blank" href="https://www.oneprof.ma/o/980367/developpeur-dapplication-web-et-mobile">
<div class="  col-3 col-sm-3 col-md-3  col-lg-3 col-xl-3 padding-left-zero">
<div class="card-c border-radius-101 box-shadow-101 border-none box-shadow-101-hover">
<div class="box-c">
<div class="img-c">
<img src="https://s3-eu-west-1.amazonaws.com/oneprof.ma/public/avatar/SwAzPJ5X36zARVhqe1UyU9Ure.png" alt="issame" />
</div>
<h2 id="span-name">
Issame
<br>
<div class="stars" style="font-size:16px; " data-rating="2.7" data-num-stars="5" title="Note professeur"> </div>
<br>
<span id="span-subject" style="background-color: #37d236;">Algorithmique, C, Java</span>
<br>
<span id="span-city" style="background-color: #1ebfe8;">Rabat</span>
</h2>
<div class="prix-annonce-black color-price-101" title="Prix par heure" style="font-size:25px;">
82 <sub>Dh/h</sub>
</div>
</div>
</div>
</div>
</a>
</div>
</div>
</div>
</div>

<div class="  col-12 col-sm-12 col-md-12  col-lg-12 col-xl-12 show-cadre-echantillon-vmobile ">
<div id="DIV_1ee">

<discovery id="DISCOVERY-UNIT-CONTAINER_2ee">
<course id="COURSE-LIST-UNIT_6ee">
<div id="DIV_8ee">
<div id="DIV_9ee">
<div id="DIV_10ee">
<h2 id="H2_11ee">

<!-- Echantillon 
*
*
* Fin
-->


    <hr>
    <tag:footer/>

</div>
<!-- /.container -->

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>


</body>

</html>
