<!doctype html>
<html>
<head>
    <meta name="layout" content="main-educator"/>
    <title>Educator</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<section>
    <h2>Contact Us</h2>
    <h3>Please use this form to contact a member of our website team</h3>
    <g:form method="post" controller="home" action="thankYou">
        <p>
            <label for="name">Full Name:</label>
            <input type="text" name="name">
        </p> <br>
        <p>
            <label for="email">Email Address: </label>
            <input type="email" name="email">
        </p> <br>
        <p>
            <label for="phone">Phone Number: </label>
            <input type="tel" name="phone">
        </p> <br>
        <p>
            <label for="call">Best Time To Call: </label>
            <input type="radio" name="time" value="morning" checked>Morning
            <input type="radio" name="time" value="noon">Noon
            <input type="radio" name="time" value="evening">Evening
        </p>  <br>
        <p>
            <label for="location">Location:</label>
            <input list="location">
            <datalist id="location">
                <option value="Rajasthan">
            </datalist>
        </p> <br>
        <p>
            <input type="submit" value="Submit Inquiry">
        </p>
    </g:form>
</section>
<div style="clear:both"></div>
</body>
</html>