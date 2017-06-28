<%@ page import="seu.automation.domain.ElevatorUser" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <style type="text/css">
        *{margin:0;padding:0;}
        .theme-buy{margin-top:7%;text-align:center;}
        .theme-signin{font-size:15px;}
        .theme-popover-mask{z-index:1;position:absolute;left:0;top:0;width:100%;height:100%;background:#000;opacity:0.5;filter:alpha(opacity=50);-moz-opacity:0.5;display:none;}
        .theme-popover{z-index:9;position:absolute;top:30%;left:30%;width:90%;height:80%;margin:-180px 0 0 -330px;border-radius:5px;border:solid 2px #e4e4e4;background-color:#fff;display:none;box-shadow:0 0 10px #666;background:#fff;}
        .theme-poptit{border-bottom:1px solid #ddd;padding:12px;position:relative;height:24px;}
        .theme-poptit .close{float:right;color:#999;padding:5px;margin:-2px -5px -5px;font:bold 14px/14px simsun;text-shadow:0 1px 0 #ddd}
        .theme-poptit .close:hover{color:#444;}
        .theme-popbod{width:100%;height:100%;}

        #allmap{width:100%;height:100%;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=GXkbjcszaqwT3Wqq7piaAEeu"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function($){

 /*           $('.theme-login').click(function(){*/
                $('.theme-popover-mask').show();
                $('.theme-popover-mask').height($(document).height());
                $('.theme-popover').show();
                var arrLongitude = [
                    <%
                    List<ElevatorUser> elevatorUserList = (List<ElevatorUser>) request.getAttribute("elevatorUserList");
                    for(int i = 0 ; i < elevatorUserList.size() ; i ++){
                    ElevatorUser str = (ElevatorUser)elevatorUserList.get(i);
                    out.print("'"+str.getLongitude()+"'");
                    if( i < elevatorUserList.size() -1){
                    out.print(",");
                    }
                    }%>
                ];
                var arrLatitude = [
                    <%
                    List<ElevatorUser> elevatoruserList = (List<ElevatorUser>) request.getAttribute("elevatorUserList");
                    for(int i = 0 ; i < elevatoruserList.size() ; i ++){
                    ElevatorUser str = (ElevatorUser)elevatoruserList.get(i);
                    out.print("'"+str.getLatitude()+"'");
                    if( i < elevatorUserList.size() -1){
                    out.print(",");
                    }
                    }%>
                ];
                var map = new BMap.Map("allmap");
                var Longitude=118.801169;
                var Latitude=32.062361;
                var new_point=new BMap.Point(Longitude,Latitude);
                var myIcon = new BMap.Icon("<%=path%>/images/position.png", new BMap.Size(24,24));
                var marker1 = new BMap.Marker(new_point,{icon:myIcon});  // 创建标注
                map.addOverlay(marker1);              // 将标注添加到地图中
                map.panTo(new_point);
                /*map.addEventListener("click",function(e){
                alert(e.point.lng + "," + e.point.lat);
                 });/!*点击获取经纬度*!/*/
                for(var i=0;i<arrLatitude.length;i++)
                {
                    Longitude=arrLongitude[i];
                    Latitude=arrLatitude[i];

                    new_point=new BMap.Point(Longitude,Latitude);
                    myIcon = new BMap.Icon("<%=path%>/images/position.png", new BMap.Size(24,24));
                    marker1 = new BMap.Marker(new_point,{icon:myIcon});  // 创建标注
                    map.addOverlay(marker1);              // 将标注添加到地图中
                    map.panTo(new_point);
                }
                map.centerAndZoom(new BMap.Point( 118.801169, 32.062361), 14);
                map.enableScrollWheelZoom(true);//缩放
                function showInfo(e){
                    if(confirm("显示此电梯的详细信息？"))
                        window.location.href= '${pageContext.request.contextPath}/MainServlet';

                  /*  $.ajax({
                       /!* dataType: "json",*!/
                        type: "get",
                        url: "<%--${pageContext.request.contextPath }--%>/MainServlet",
                        success: function (data) {
                            //遍历传过来的数据
                            window.location.href= '<%--${pageContext.request.contextPath}--%>/MainServlet';
                            alert("显示此电梯的详细信息？");
                        },
                        error: function () {
                            alert("电梯详细信息获取失败！");
                        }

                    });*/
                }
                 map.addEventListener("click", showInfo);
           /* });*/
            $('.theme-poptit .close').click(function(){
                $('.theme-popover-mask').hide();
                $('.theme-popover').hide();
                window.location.href= '/LoginServlet?username=${username}&password=${password}';

            });
            $('.theme-popover-mask').click(function(){
                $('.theme-poptit .close').click();
            });

        });
    </script>
    <title>Insert title here</title>
</head>


<body>
<%--<div class="theme-buy">
    <a class="theme-login" href="javascript:;">点击查看效果</a>
</div>

<div class="theme-popover-mask"></div>--%>

<div class="theme-popover">
    <div class="theme-poptit">
        <a href="javascript:;" title="关闭" class="close" style="text-decoration: none;">×</a>
        <h3>电梯用户分布图</h3>
    </div>
    <div class="theme-popbod">
        <div id="allmap"></div>
    </div>
</div>
</body>

</html>
<!-- <script type="text/javascript"> -->

<!-- // // 百度地图API功能 -->
<!-- // var map = new BMap.Map("allmap"); -->
<!-- // map.centerAndZoom(new BMap.Point(116.404, 39.915), 14); -->
<!-- // var marker1 = new BMap.Marker(new BMap.Point(116.384, 39.925));  // 创建标注 -->
<!-- // map.addOverlay(marker1);              // 将标注添加到地图中 -->

<!-- // //创建信息窗口 -->
<!-- // var infoWindow1 = new BMap.InfoWindow("普通标注"); -->
<!-- // marker1.addEventListener("click", function(){this.openInfoWindow(infoWindow1);}); -->
<!-- </script> -->
