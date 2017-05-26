<%--
  Created by IntelliJ IDEA.
  User: GengRui
  Date: 2017/5/25 0025
  Time: 下午 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <style type="text/css">
        body, html, #allmap {
            width: 100%;
            height: 100%;
            overflow: hidden;
            margin: 0;
            font-family: "微软雅黑";
        }
    </style>
    <script type="text/javascript"
            src="http://api.map.baidu.com/api?v=2.0&ak=TL4HwHPFRLmD7rmMYQowPKCeOp2wdck4"></script>
    <title>地址解析</title>
</head>
<body>
<div id="allmap"><button type="button" onclick="getLocation()">123</button></div>




<script src="../../../../plugins/jQuery/jquery-2.2.3.min.js"></script>



</body>
</html>
<script type="text/javascript">
    // 创建地址解析器实例
    function getLocation() {
//            var myGeo = new BMap.Geocoder();
        var address = $("#centerAddress").html();
        alert(address);
//            // 将地址解析结果显示在地图上,并调整地图视野
//            myGeo.getPoint("上海市徐汇区吴中路100号", function (point) {
//                if (point) {
////            alert(point.lng + "    " + point.lat);
//                } else {
//                    alert("您选择地址没有解析到结果!");
//                }
//            }, "上海市");
    }

</script>
