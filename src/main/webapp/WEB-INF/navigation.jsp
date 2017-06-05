<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>运维管理系统</title>
    <link rel="icon" type="image/x-icon" href="icon/favicon_64.ico"/>
    <link rel="shortcut icon" type="image/x-icon" href="icon/favicon_64.ico"/>
    <link rel="stylesheet" href="dependents/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="dependents/bootstrap-table/1.9.1/bootstrap-table.css">
    <script type="text/javascript" src="dependents/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="dependents/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="dependents/bootstrap-table/1.9.1/bootstrap-table.js"></script>
    <script type="text/javascript" src="dependents/bootstrap-table/1.9.1/bootstrap-table-locale-all.js"></script>
    <!--[if lt IE 9]>
    <script src="dependents/bootstrap/plugins/ie/html5shiv.js"></script>
    <script src="dependents/bootstrap/plugins/ie/respond.js"></script>
    <![endif]-->
    <!--[if lt IE 8]>
    <script src="dependents/bootstrap/plugins/ie/json2.js"></script>
    <![endif]-->
    <!-- font-awesome -->
    <link rel="stylesheet" type="text/css" href="dependents/fontAwesome/css/font-awesome.min.css" media="all"/>
    <!-- layer -->
    <script type="text/javascript" src="dependents/layer/layer.js"></script>
    <!-- base -->
    <link rel="stylesheet" href="css/base.css">
    <!--datetimepicker -->
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#accset">
                <span class="sr-only">导航条</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">运维管理系统</a>
        </div>
        <div class="collapse navbar-collapse" id="accset">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页</a> </li>
                <li><a href="eventlist.jsp">设备巡检</a> </li>
                <li><a href="accset.jsp">资产管理</a> </li>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>

