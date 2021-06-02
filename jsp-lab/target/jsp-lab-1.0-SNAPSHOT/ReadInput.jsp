<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@ page import="java.io.InputStream" %>
<%@ page import="javax.servlet.ServletContext"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<% String fileName = "users";
    ServletContext servletContext = pageContext.getServletContext();
    InputStream inputStream = servletContext.getResourceAsStream(fileName);

    String getLineFromFile;
    String selectName;
    boolean findType;
    int i = 0;
    selectName = request.getParameter("textfield");
    findType = request.getParameter("equalfind")!= null;
    BufferedReader br = new BufferedReader((new InputStreamReader(inputStream)));

    out.println("<table border = \"1\">");
    while((getLineFromFile = br.readLine())!= null)
    {
        String[] wordFields = getLineFromFile.split(",");
        if (findType)
        {
            if (wordFields[0].equals(selectName)){
                out.println("<tr>");
                for (int field = 0; field < wordFields.length; field++)
                {
                    out.println("<td>" + wordFields[field] + "</td>");
                }
                out.println("</tr>");
                i++;
            }
        }
        else
        {
            if (wordFields[0].contains(selectName)){
                out.println("<tr>");
                for (int field = 0; field < wordFields.length; field++)
                {
                    out.println("<td>" + wordFields[field] + "</td>");
                }
                out.println("</tr>");
                i++;
            }
        }
    }
    out.println("</table>");
    if (i == 0){
        out.println("Ни одной строки не найдено.");
    }


%>
<%--<%--%>
<%--    out.println("Yours IP is " + request.getRemoteAddr());--%>
<%--%>--%>
<%--<br>--%>
<%--<% out.println("Requset " + request.getParameter("textfield"));--%>
<%--%>--%>
<br>
<br>
<a href="index.jsp">BACK</a>
<%--<form action="index.jsp">Бэк на главную--%>
<%--    <input type="submit" value="Back to index.jsp">--%>
<%--</form>--%>
</body>
</html>