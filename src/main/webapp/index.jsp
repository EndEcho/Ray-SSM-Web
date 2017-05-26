<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="r" uri="http://www.mytag/taglib" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>

<%--<r:showData stable="User"/>--%>


<a href="/adminLogin">index2.jsp</a><br>
<a href="/showAllUser">tables/data.jsp</a><br>
<a href="/testTag">GO</a>

<a href="/centerStateData">centerStateData</a><br>
<a href="/BMap">BMap</a>
<span>总中心数：${centerCount}</span>
<span>在建中心数：${emptyCenterCount}</span>

<%--<%--%>
<%--response.sendRedirect("/showAllMember");--%>
<%--%>--%>
<%--<br>--%>
<%--<br>--%>
<%--<form action="/login" method="post">--%>
<%--<span>用户名</span>--%>
<%--<input id="user-name-label" type="text" name="userName">--%>
<%--<br>--%>
<%--<span>密码</span>--%>
<%--<input id="password-label" type="password" name="userPwd">--%>
<%--<br>--%>
<%--<input type="submit" value="登录">--%>
<%--</form>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<form action="/addNewUser" method="post">--%>
<%--<span>昵称</span>--%>
<%--<input type="text" name="account">--%>
<%--<br>--%>
<%--<span>用户名</span>--%>
<%--<input type="text" name="userName">--%>
<%--<br>--%>
<%--<span>头像</span>--%>
<%--<input type="text" name="userIcon">--%>
<%--<br>--%>
<%--<span>密码</span>--%>
<%--<input type="text" name="userPwd">--%>
<%--<br>--%>
<%--<span>邮箱</span>--%>
<%--<input type="text" name="userEmail">--%>
<%--<br>--%>
<%--<span>电话</span>--%>
<%--<input type="text" name="userTele">--%>
<%--<br>--%>
<%--<span>身份证</span>--%>
<%--<input type="text" name="userIdnum">--%>
<%--<br>--%>
<%--<span>性别</span>--%>
<%--<input type="text" name="userGander">--%>
<%--<br>--%>
<%--<span>权限</span>--%>
<%--<input type="text" name="role">--%>
<%--<br>--%>
<%--<input type="submit" value="添加">--%>
<%--</form>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<br>--%>
<%--<form action="#" method="post">--%>
<%--<span>城市</span>--%>
<%--<input type="text" name="account">--%>
<%--<br>--%>
<%--<span>用户名</span>--%>
<%--<input type="text" name="userName">--%>
<%--<br>--%>
<%--<span>头像</span>--%>
<%--<input type="text" name="userIcon">--%>
<%--<br>--%>
<%--<span>密码</span>--%>
<%--<input type="text" name="userPwd">--%>
<%--<br>--%>
<%--<span>邮箱</span>--%>
<%--<input type="text" name="userEmail">--%>
<%--<br>--%>
<%--<span>电话</span>--%>
<%--<input type="text" name="userTele">--%>
<%--<br>--%>
<%--<span>身份证</span>--%>
<%--<input type="text" name="userIdnum">--%>
<%--<br>--%>
<%--<span>性别</span>--%>
<%--<input type="text" name="userGander">--%>
<%--<br>--%>
<%--<span>权限</span>--%>
<%--<input type="text" name="role">--%>
<%--<br>--%>
<%--<input type="submit" value="添加">--%>
<%--</form>--%>
<%--<br>--%>
<%--<br>--%>
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