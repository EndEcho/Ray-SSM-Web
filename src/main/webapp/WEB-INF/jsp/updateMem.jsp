<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <script src="../../../../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <title>无标题文档</title>
    <style type="text/css">
        #form1 {
            margin-left: 20px;
            margin-top: 20px;
        }

        tbody tr th {
        }
    </style>
    <script>
        $(document).ready(function () {
            var gender = "${getMemberById.mGender}";
            if (gender == "男") {
                $("#RadioGroup_0").prop("checked", "checked");
            } else {
                $("#RadioGroup_1").prop("checked", "checked");
            }
        });
        $(document).ready(function () {
            $("#abc").blur(function () {
                console.log($("#abc").attr("value"));
                if ($("#abc").attr("value") == null) {
                    alert("1");
                }
            });
        });


    </script>
</head>

<body>
<form id="form1" name="form1" method="post" action="/doUpdateMember">
    <stable width="300" border="0" cellspacing="0" cellpadding="0">
        <tbody>
        <tr>
            <th scope="col">会员信息</th>
            <th></th>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input type="text" value="${getMemberById.mName}" name="mName" id="abc" onblur="aa()"></td>
        </tr>
        <tr>
            <td>性别</td>
            <td><p>
                <label>
                    <input type="radio" name="mGender" value="男" id="RadioGroup_0">
                    男</label>
                <label>
                    <input type="radio" name="mGender" value="女" id="RadioGroup_1">
                    女</label>
                <br>
            </p></td>
        </tr>
        <tr>
            <td> 年龄</td>
            <td><input type="text" value="${getMemberById.mAge}" name="mAge" id="mAge"></td>
        </tr>
        <tr>
            <td>家庭住址</td>
            <td><input type="text" value="${getMemberById.mAddress}" name="mAddress"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" value="${getMemberById.mEmail}" name="mEmail"></td>
        </tr>
        <tr>

            <td><input type="submit" value="修改"><input type="hidden" value="${getMemberById.mId}" name="mId"></td>
            <td><input type="reset" id="re"></td>
        </tr>

        </tbody>
    </stable>

</form>
</body>
</html>
