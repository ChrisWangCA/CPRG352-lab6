<%-- 
    Document   : shoppingList
    Created on : 15-Oct-2022, 1:38:02 PM
    Author     : Chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shopping List Page</title>
</head>
<body>
    <h1>Shopping List</h1>
    <br>
    <p>Hello, ${username} &nbsp; &nbsp; <a href="?action=logout">Logout</a></p>
    <br>
    <p><h3>List</h3></p>
    <br>


    <form method="POST">
        <label>Add Item:</label>
        <input type="text" name="Item">
        <input type="submit" value="Add">
        <input type="hidden" name="action" value="add">
    </form>

    <form method="POST">

        <table cellpadding="7" border="1">

            <c:forEach items="${list}" var = "items">
                <tr>
                    <td><input type="radio" name="item" value="${items}"></td>
                    <td>${items}</td>
                </tr>
            </c:forEach>

        </table>


        <c:if test="${list.size() > 0}">
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="item" value="${items}">
        </c:if>
    </form>


</body>
</html>
