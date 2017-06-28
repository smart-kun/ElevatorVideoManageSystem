<%--
  Created by IntelliJ IDEA.
  User: zangkun
  Date: 2017/4/23
Time: 11:05
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/jsp/nav.jsp" ></jsp:include>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
</head>

<SCRIPT>
    var check=false;
    var pic_num=0;
    var pic_order=0;
    function changeImg(){
                pic_num++;
                if(pic_num%1==0)
                    pic_num=0;
                var pic_path1="/images/oriend"+pic_num.toString()+".jpg";
                var pic_path2='<%=request.getAttribute("path")%>';
                if(pic_path2==null)
                    pic_path2 ="/images/new"+pic_num.toString()+".jpg"
                /*             var pic_path1="/images/orient0.jpg";
                 var pic_path2="/images/new0.jpg";*/
                var oriendpic=document.getElementById("oriendpic");
                var newpic=document.getElementById("newpic");
                /*   每次调用图片时路径后需要添加时间戳，否则不能实时刷新图片*/
                oriendpic.src="${pageContext.request.contextPath }"+pic_path1+"?t="+Math.random();
                /* alert(pic_path2);*/
                newpic.src="${pageContext.request.contextPath }"+pic_path2+"?t="+Math.random();
                //sleep(100);
                //var pic_path="MainServlet?path="+pic_path2;
                //sleep(100);
                //window.open(pic_path,"_self")//参数可设你要调用的servlet,
        //setTimeout("changeImg()",1000);

    }
    //setInterval("changeImg()",500)//一秒刷新一次图片

   function newstate() {
       $.ajax({
           dataType: "json",
           type: "get",
           url: "${pageContext.request.contextPath }/DisplayStateServlet",
           success: function (data) {
               //遍历传过来的数据
               $.each(data.people,function(index,item){
                   document.getElementById("v1").innerText    = item.v1;
                   document.getElementById("v2").innerText   = item.v2;
                   document.getElementById("v3").innerText    = item.v3;
                   document.getElementById("v4").innerText   = item.v4;
                   document.getElementById("v5").innerText    = item.v5;
                   document.getElementById("v6").innerText   = item.v6;
                   document.getElementById("v7").innerText    = item.v7;
                   document.getElementById("v8").innerText   = item.v8;
                   document.getElementById("v9").innerText    = item.v9;
                   document.getElementById("v10").innerText   = item.v10;
                   document.getElementById("v11").innerText    = item.v11;
                   document.getElementById("v12").innerText   = item.v12;
                   document.getElementById("v13").innerText   = item.v13;
                   document.getElementById("v14").innerText    = item.v14;
                   document.getElementById("v15").innerText   = item.v15;
                   document.getElementById("v16").innerText    = item.v16;
                   document.getElementById("v17").innerText   = item.v17;
                   document.getElementById("v18").innerText   = item.v18;
                   document.getElementById("v19").innerText    = item.v19;
                   document.getElementById("v20").innerText   = item.v20;



                 /*  document.getElementById("totalnumid").innerText  = item.totalnum;*/
                   //alert(item.name+","+item.sex);
               });

           },
           error: function () {
                //alert("失败，请稍后再试！");
           }

       });

   }
    //setTimeout("newstate()",1000);//一秒之后自动执行一次
    setInterval("newstate()",1000);

    /*    function sleep(numberMillis) {
     var now = new Date();
     var exitTime = now.getTime() + numberMillis;
     while (true) {
     now = new Date();
     if (now.getTime() > exitTime)
     return;
     }
     }*/
</SCRIPT>
<body <%--onload="changeImg()"--%>>
<!-- Page Content -->
<div id="page-wrapper" >

    <%--    &lt;%&ndash; 视频原图及处理后的图像显示&ndash;%&gt;
            <div style="float: left;margin-left: 10px"> <font  style="margin-left: 300px"  size="5" color="blue">原始图像</font>
                <font style="margin-left: 300px" size="5" color="blue">
                    ${string}
                </font>
            </div>

        <div style="float: left;margin-left: 10px">
        <img  src="${pageContext.request.contextPath }/images/oriend0.jpg" width="400px" height="600px" id="oriendpic" style="margin-left: 100px">

        <img  src="${pageContext.request.contextPath }/images/new0.jpg" width="400px" height="600px" id="newpic" style="margin-left: 100px">
        </div>
        <br/> <br/>--%>
            <div style="float: left;margin-left: 10px " id="displaystate">
                <br/>
                <font style="margin-left: 50%" size="5" color="blue">当前电梯状态显示列表</font>
                <br/>
                <table width="80%" height="150" border="1" style="margin-left: 200px"  <%--style="margin-left: 200px"--%> >
                    <tr style="font-size: 20px">  <td >电梯ID</td>  <td id="v1"></td>   </tr>
                    <tr style="font-size: 20px">  <td >电梯运行参数</td>  <td id="v2"></td>   </tr>
                    <tr style="font-size: 20px">  <td >总接触器</td>  <td id="v3"></td>   </tr>
                    <tr style="font-size: 20px">  <td >运行接触器</td>  <td id="v4"></td>   </tr>
                    <tr style="font-size: 20px">  <td >安全回路</td>  <td id="v5"></td>   </tr>
                    <tr style="font-size: 20px">  <td >运行状态</td>  <td id="v6"></td>   </tr>
                    <tr style="font-size: 20px">  <td >门状态</td>  <td id="v7"></td>   </tr>
                    <tr style="font-size: 20px">  <td >轿厢上行</td>  <td id="v8"></td>   </tr>
                    <tr style="font-size: 20px">  <td >轿厢下行</td>  <td id="v9"></td>   </tr>
                    <tr style="font-size: 20px">  <td >平层状态</td>  <td id="v10"></td>   </tr>
                    <tr style="font-size: 20px">  <td >上极限</td>  <td id="v11"></td>   </tr>
                    <tr style="font-size: 20px">  <td >下极限</td>  <td id="v12"></td>   </tr>
                    <tr style="font-size: 20px">  <td >下报警按钮</td>  <td id="v13"></td>   </tr>
                    <tr style="font-size: 20px">  <td >困人故障</td>  <td id="v14"></td>   </tr>
                    <tr style="font-size: 20px">  <td >安全回路断开</td>  <td id="v15"></td>   </tr>
                    <tr style="font-size: 20px">  <td >上极限动作</td>  <td id="v16"></td>   </tr>
                    <tr style="font-size: 20px">  <td >下极限动作</td>  <td id="v17"></td>   </tr>
                    <tr style="font-size: 20px">  <td >开门走梯</td>  <td id="v18"></td>   </tr>
                    <tr style="font-size: 20px">  <td >运行超时</td>  <td id="v19"></td>   </tr>
                    <tr style="font-size: 20px">  <td >电梯时间</td>  <td id="v20"></td>   </tr>

            </div>
            <%--<button type="button" onclick="newstate()">点击这里</button>--%>
</div>
</div>
<!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<jsp:include page="/WEB-INF/jsp/bottom.jsp"></jsp:include>
</body>
