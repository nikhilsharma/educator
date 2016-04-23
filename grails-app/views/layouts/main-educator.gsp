<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Eduocator"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="style.css"/>
    <g:layoutHead/>
</head>
<body>

<div id="container">
    <header>
        <asset:image src="LOGO1.jpg" align="left"/>
        <h1>Eduocator</h1>
        <sec:ifLoggedIn>
            %{--<span style="align:right">--}%
            <ul>
                <li class="menuitem">Hello <sec:username/></li>
                <li class="menuitem"><g:link controller="logout" action="index">Logout</g:link> </li>
            </ul>
            %{--</span>--}%
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
        <ul>
            <li class="menuitem">
                <g:link controller="login" action="index">login |</g:link>
            </li>
            <li class="menuitem">
                %{--<a href="register.html">register</a>--}%
                <g:link controller="educatorUser" action="create">register</g:link>
            </li>
        </ul>
        </sec:ifNotLoggedIn>
    </header>

    <nav id="menu">
        <ul>
            %{--<li class="menuitem"><a href="index.html">Home</a></li>--}%
            <li class="menuitem"><g:link controller="home" action="index">Home</g:link></li>
            %{--<li class="menuitem"><a href="about.html">About Us</a></li>--}%
            <li class="menuitem"><g:link controller="Home" action="aboutUS"> About Us </g:link></li>
            %{--<li class="menuitem"><a href="browse.html">Colleges</a></li>--}%
            <li class="menuitem"><g:link controller="college" action="index">Colleges</g:link></li>
            %{--<li class="menuitem"><a href="contact.html">Contact Us</a></li>--}%
            <li class="menuitem"><g:link controller="Home" action="contactUS">Contact Us</g:link></li>
            <sec:ifAllGranted roles="ROLE_ADMIN">
                <li class="menuitem"><g:link controller="college" action="create">New College</g:link></li>
            </sec:ifAllGranted>
        </ul>
    </nav>

<g:layoutBody/>
    <footer>
    &copy; Copyright 2016 All Rights Reserved www.eduocator.in
    </footer>
</div><!--container ends-->
    <asset:javascript src="application.js"/>

</body>
</html>
