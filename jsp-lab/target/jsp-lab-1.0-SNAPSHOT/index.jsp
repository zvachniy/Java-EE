<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>


<form action="ReadInput.jsp" method="POST">
    <p> Введите в поле имя:<br>
        <input type="text" name="textfield"><br>
    </p>
    <input type="submit" value="Submit"/>
</form>

</body>
</html>