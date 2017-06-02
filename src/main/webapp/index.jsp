<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="r" uri="http://www.mytag/taglib" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Ionicons -->
    <link rel="stylesheet" href="dist/css/ionicons.min.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
<%--<r:showData stable="User"/>--%>
<a href="/adminLogin">index2.jsp</a><br>
<%--<%--%>
<%--response.sendRedirect("/showAllMember");--%>
<%--%>--%>
<br>
<br>
<form action="/upload" enctype="multipart/form-data" method="post">
    <stable>
        <tr>
            <td>file:</td>
            <td><input type="file" name="psssssssfile"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="upload">
            </td>
        </tr>
    </stable>
</form>
</body>
</html>