//刷新页面
function refresh() {
    $table.bootstrapTable('refresh');
}

//新增按钮点击事件
$("#btn_add").on("click", function () {
    $('#addAndUpdateLabel').text("新增资产信息");
    $('#txt_type').val("add");
    $('#addAndUpdate').modal({
        keyboard: true
    });
});

//清除弹窗原数据
$("#addAndUpdate").on("hidden.bs.modal", function () {
    $('#txt_name').val("");
    document.getElementById('p_man').checked = true;
    $('#txt_pwd').val("");
    $('#txt_email').val("");
    $('#txt_phone').val("");
});

//弹框保存按钮点击事件
$("#btn_add_update_submit").off().on('click', function () {
    var id = $('#txt_id').val(),
        name = $('#txt_name').val(),
        sex = $('input:radio[name="sex"]:checked').val(),
        pwd = $('#txt_pwd').val(),
        email = $('#txt_email').val(),
        phone = $('#txt_phone').val(),
        type = $('#txt_type').val();

    //验证数据
    if (!name) {
        layer.msg('请填写名称!', {icon: 2, time: 1500});
        return false;
    }
    if (!pwd) {
        layer.msg('请填写密码!', {icon: 2, time: 1500});
        return false;
    }
    if (!email) {
        layer.msg('请填写邮箱!', {icon: 2, time: 1500});
        return false;
    }
    if (!phone) {
        layer.msg('请填写手机!', {icon: 2, time: 1500});
        return false;
    }

    $.ajax({
        url: '../user/api/addAndUpdateUser/' + type,
        method: 'post',
        contentType: "application/x-www-form-urlencoded",
        data: {
            id: id,
            userName: name,
            userSex: sex,
            userPwd: pwd,
            userEmail: email,
            userPhone: phone
        },
        //阻止深度序列化，向后台传送数组
        traditional: true,
        success: function (msg) {
            if (msg.success) {
                layer.msg(msg.msg, {icon: 1, time: 1500});
            } else {
                layer.msg(msg.msg, {icon: 2, time: 1500});
            }
            refresh();
        }
    })
});

//tr中编辑按钮点击事件
function editData(row) {
    //向模态框中传值
    $('#txt_id').val(row.id);
    $('#txt_name').val(row.name);
    $('#txt_pwd').val(row.pwd);
    $('#txt_email').val(row.email);
    $('#txt_phone').val(row.phone);
    if (row.sex == 0) {
        document.getElementById('p_woman').checked = true;
    } else {
        document.getElementById('p_man').checked = true;
    }
    $('#txt_type').val("update");

    $('#addAndUpdateLabel').text("修改用户信息");

    //显示模态窗口
    $('#addAndUpdate').modal({
        //点击ESC键,模态窗口即会退出。
        keyboard: true
    });
}

//tr中删除按钮点击事件
function delData(id, type) {
    layer.confirm('确定要删除用户编号为' + id + '数据?', {icon: 3, title: '提示'}, function () {
        $.ajax({
            url: '../user/api/deleteUser/' + type,
            method: 'post',
            contentType: "application/x-www-form-urlencoded",
            //阻止深度序列化，向后台传送数组
            traditional: true,
            data: {id: id.toString()},
            success: function (msg) {
                if (msg.success) {
                    layer.msg(msg.msg, {icon: 1, time: 1500});
                } else {
                    layer.msg(msg.msg, {icon: 2, time: 1500});
                }
                refresh();
            }
        })
    });
}





