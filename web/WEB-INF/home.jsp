<%@ page import="model.Post" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>
<% List<Post> posts = (List<Post>) request.getAttribute("posts"); %>
Posts:
<%
    for (Post post : posts) { %>
<div>
    <h2><%=post.getTitle()%>
    </h2>
    <div>
        <img src="/getImage?picName=<%=post.getPicUrl()%>" width="100"/>
    </div>
    <p><%=post.getShortText()%>
    </p>
</div>
<hr>
<%
    }
%>
<br>


</body>
</html>
