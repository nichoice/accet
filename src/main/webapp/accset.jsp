<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>资产管理</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/x-icon" href="icon/favicon_64.ico"/>
    <link rel="shortcut icon" type="image/x-icon" href="icon/favicon_64.ico"/>
    <title>设备巡检</title>
    <!-- jQuery -->
    <script type="text/javascript" src="dependents/jquery/jquery.min.js"></script>
    <!-- bootstrap -->
    <script type="text/javascript" src="dependents/bootstrap/js/bootstrap.js"></script>
    <link type="text/css" rel="stylesheet" href="dependents/bootstrap/css/bootstrap.min.css">
    <!-- bootstrap-table -->
    <script type="text/javascript" src="dependents/bootstrap-table/1.9.1/bootstrap-table.js"></script>
    <script type="text/javascript" src="dependents/bootstrap-table/1.9.1/bootstrap-table-locale-all.js"></script>
    <link rel="stylesheet" type="text/css" href="dependents/bootstrap-table/1.9.1/bootstrap-table.css"/>
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
    <!-- datetimepicker -->
    <script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
    <link rel="stylesheet" href="css/bootstrap-datetimepicker.css">
    <jsp:include page="WEB-INF/navigation.jsp" />
</head>
<body>
<div class="container-fluid" style="margin-top: 50px;">
    <h4>检索条件</h4>
    <div class="row-fluid">
        <div class="span12">
            <div class="control-group form-inline" style="border: 1px solid #ccc;padding: 10px; border-radius: 3px;">
                <div class="input-group input-group-sm">
                    <label for="accset_id">资产编号</label>
                    <input type="text" id="accset_id" value="">
                    <label for="accset_name">资产名称</label>
                    <input type="text" id="accset_name" value="">
                    <label for="accset_model">资产型号</label>
                    <input type="text" id="accset_model" value="">
                    <label for="accset_status">资产状态</label>
                    <input type="text" id="accset_status" value="">
                    <label for="accset_brand">资产品牌</label>
                    <input type="text" id="accset_brand" value="">
                    <div class="input-group input-group-sm" style="margin-top: 5px">
                        <label for="accset_buy">采购日期</label>
                        <input type="text" id="accset_buy" value="">
                        <label for="accset_oem">&nbsp;工&nbsp;程&nbsp;商</label>
                        <input type="text" id="accset_oem" value="">
                        <label for="accset_installation">安装日期</label>
                        <input type="text" id="accset_installation" value="">
                        <label for="accset_address">安装地点</label>
                        <input type="text" id="accset_address" value="">
                        <label for="accset_warranty">保修截止</label>
                        <input type="text" id="accset_warranty" value="">
                        <div class="input-group">
                            <button type="button" class="btn btn-primary btn-sm">查询</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="toolbar" class="btn-group" style="margin-top: 5px;">
        <button id="btn_add" type="button" class="btn btn-default btn-sm">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
        </button>
        <button id="btn_delete" type="button" class="btn btn-default btn-sm">
            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
        </button>
        <button id="btn_export" type="button" class="btn btn-default btn-sm">
           导出
        </button>
    </div>
<div style="margin-top: 10px">
    <table id="accset" class="table table-bordered"></table>
</div>
    <!-- 新增或修改弹框-->
    <div class="modal fade" id="addAndUpdate" tabindex="-1" role="dialog" aria-labelledby="addAndUpdateLabel" style="margin-top: 500px;">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true"></span></button>
                    <h4 class="modal-title" id="addAndUpdateLabel">新增资产信息</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="txt_type" class="form-control" id="txt_type" placeholder="操作类型">
                    <input type="hidden" name="txt_id" class="form-control" id="txt_id" placeholder="编号">
                    <div class="form-group">
                        <label for="name">资产名称</label>
                        <input type="text" name="name" class="form-control" id="name" placeholder="资产名称">
                    </div>
                    <div class="form-group">
                        <label for="model">资产型号</label>
                        <input type="text" name="model" class="form-control" id="model" placeholder="资产名称">
                    </div>
                    <div class="form-group">
                        <label for="status">资产状态</label>
                        <input type="text" name="status" class="form-control" id="status" placeholder="资产状态">
                    </div>
                    <div class="form-group">
                        <label for="brand">资产品牌</label>
                        <input type="text" name="brand" class="form-control" id="brand" placeholder="资产品牌">
                    </div>
                    <div class="form-group">
                        <label for="buy">采购日期</label>
                        <input type="text" name="buy" class="form-control" id="buy" placeholder="名称">
                    </div>
                    <div class="form-group">
                        <label for="oem">工程商</label>
                        <input type="text" name="buy" class="form-control" id="oem" placeholder="名称">
                    </div>
                    <div class="form-group">
                        <label for="installation">安装日期</label>
                        <input type="text" name="installation" class="form-control" id="installation" placeholder="名称">
                    </div>
                    <div class="form-group">
                        <label for="address">安装地点</label>
                        <input type="text" name="address" class="form-control" id="address" placeholder="名称">
                    </div>
                    <div class="form-group">
                        <label for="warranty">保修截止</label>
                        <input type="text" name="buy" class="form-control" id="warranty" placeholder="保修截止">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><span
                            class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
                    </button>
                    <button type="button" id="btn_add_update_submit" class="btn btn-primary btn-sm"
                            data-dismiss="modal"><span
                            class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/accset_table_crud.js"></script>
<script type="text/javascript" src="js/accset_table.js"></script>
</body>
</html>
