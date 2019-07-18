<%@ page import="model.Category" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% List<Category> categoryList = (List<Category>) request.getAttribute("categories"); %>

Add Post <br>
<form action="/admin/addPost" method="post" enctype="multipart/form-data">
    title: <input type="text" name="title"> <br>
    shortText: <textarea name="shortText"></textarea><br>
    Text: <textarea name="text"></textarea><br>
    category: <select name="category_id">
    <% for (Category category : categoryList) { %>
    <option value="<%=category.getId()%>"><%=category.getName()%>
    </option>
    <%}%>
</select>
    image: <input type="file" name="picture"/><br>
    <input type="submit" value="add">
</form>

<br>
<br>
Add Category:
<br>
<form action="/admin/addCategory" method="post">
   Name: <input type="text" name="name"><br>
    <input type="submit" value="Add">
</form>

</body>
</html>
