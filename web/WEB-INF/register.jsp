<%-- 
    Document   : register
    Created on : 15-Oct-2022, 1:37:41 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <br>
        <form method="POST">
            <label>Username:</label>
            <input type="text" name="username">
            <input type="submit" value="Register name">
            <input type="hidden" name="action" value="register">
        </form>
    </body>
</html>
