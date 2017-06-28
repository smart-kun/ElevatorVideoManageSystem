<%--
  Created by IntelliJ IDEA.
  User: zangkun
  Date: 2017/4/23
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%--

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>注册页面</title>
</head>

<body style="text-align: center;">
<form action="${pageContext.request.contextPath }/RegisterServlet" method="post">
  用户名：<input type="text" name="username"><br/>
  密码：<input type="text" name="password"><br/>
  <input type="submit" value="注册">

</form>
</body>
</html>
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>欢迎新用户注册</title>

  <!-- Bootstrap Core CSS -->
  <link href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- MetisMenu CSS -->
  <link href="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

  <!-- Custom CSS -->
  <link href="${pageContext.request.contextPath}/dist/css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom Fonts -->
  <link href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you util the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->

</head>

<body>

<div class="container">
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
      <div class="login-panel panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">注册页面</h3>
        </div>
        <div class="panel-body">
          <form role="form" action="${pageContext.request.contextPath}/RegisterServlet" method="post">
            <fieldset>
              <div class="form-group">
                <input class="form-control" placeholder="账户名" name="username" autofocus>
              </div>
              <div class="form-group">
                <input class="form-control" placeholder="密码" name="password" type="text">
              </div>
              <!-- Change this to a button or input when using this as a form -->
              <input type="submit" value="注册" class="btn btn-primary form-control">
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/dist/js/sb-admin-2.js"></script>

<!-- Background-->
<script src="${pageContext.request.contextPath}/bower_components/login/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/login/scripts.js"></script>

</body>

</html>
