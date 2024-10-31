<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/styles.css">
    <title>Login | Ludiflex</title>
</head>
<body>
    <!-- Use form instead of div for submission -->
    <form class="login-box" action="LoginServlet" method="post">
        <div class="login-header">
            <header>Login</header>
            <span class="error">${error}</span>
            <c:remove var="error" scope="session"/>
        </div>
        <div class="input-box">
            <input name="email" type="email" class="input-field" placeholder="Email" required>
        </div>
        <div class="input-box">
            <input name="password" type="password" class="input-field" placeholder="Password" required>
        </div>
        <div class="forgot">
            <section>
                <input type="checkbox" id="check">
                <label for="check">Remember me</label>
            </section>
            <section>
                <a href="#">Forgot password</a>
            </section>
        </div>
        <div class="input-submit">
            <!-- Use button inside the form -->
            <button type="submit" class="submit-btn">Login</button>
        </div>
        <div class="sign-up-link">
            <p>Don't have an account? <a href="RegisterServlet">Register</a></p>
        </div>
    </form>
</body>
</html>
