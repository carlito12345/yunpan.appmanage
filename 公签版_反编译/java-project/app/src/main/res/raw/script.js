
function doAction(action, kv) {
    kv['do'] = action;
    $.post('/action', kv, function (data) {
        console.log(data);
    });
    return false;
}

//添加返回上级 item
function tpl_top(cs_path) {

    let path_arr = cs_path.split('%2F');
    for (let i = 0; i < path_arr.length; i++) {

        //要计算一下路径
        let str_return="";
        for (let k = 0; k <= i; k++) {
           if(k===0){
              str_return=path_arr[k];
           } else {
              str_return=str_return+'%2F'+path_arr[k];
           }
        }
        let str_name=decodeURIComponent(path_arr[i]);
        $('#file_path').append(` &gt; <a href="javascript:void(0)" onclick="listFile('` + str_return + `',false)">` + str_name + `</a>`);
    }


    if(path_arr.length===1){
        return `<a class="weui-cell  weui-cell_access" href="javascript:void(0)" onclick="listFile('',false)">
        <div class="weui-cell__hd"><img src="/return1.png" alt="" style="width: 32px; margin-right: 16px; display: block;"></div>
        <span class="weui-cell__bd">
            <span>返回【内部存储】</span>
        </span>
        <span class="weui-cell__ft">
        </span>
        </a>`;
    }

    let str_return="";
    for (let i = 0; i < path_arr.length-1; i++) {
        if(i===0){
            str_return=path_arr[i];
        } else {
            str_return=str_return+'%2F'+path_arr[i];
        }
    }
    return `<a class="weui-cell  weui-cell_access" href="javascript:void(0)" onclick="listFile('` + str_return + `',false)">
    <div class="weui-cell__hd"><img src="/return1.png" alt="" style="width: 32px; margin-right: 16px; display: block;"></div>
    <span class="weui-cell__bd">
        <span>返回【上级目录】</span>
    </span>
    <span class="weui-cell__ft">
    </span>
    </a>`;
}

//添加目录item
function tpl_dir(name, time, cs_path) {
    return `<a class="weui-cell  weui-cell_access" href="#" onclick="listFile('` + cs_path + `',false)">
    <div class="weui-cell__hd"><img src="`+ ic_dir + `" alt="" style="width: 32px; margin-right: 16px; display: block;"></div>
    <span class="weui-cell__bd">
    <span>`+ name + `</span>
        <div class="weui-cell__desc">`+ time + `</div>
    </span>
    <span class="weui-cell__ft"></span>
    </a>`;
}

//添加文件item
function tpl_file(cs_path, name, time, size) {
    ico="";
    if(name.endsWith('.apk')||name.endsWith('.apk.1')||name.endsWith('.apkm')||name.endsWith('.mapk')||name.endsWith('.xapk')){
        ico=ic_apk;
    } else if(name.endsWith('.zip')||name.endsWith('.rar')||name.endsWith('.7z')||name.endsWith('.tar')||name.endsWith('.gz')||name.endsWith('.bz2')){
             ico=ic_zip;
    } else if(name.endsWith('.png')||name.endsWith('.jpg')||name.endsWith('.jpeg')||name.endsWith('.gif')||name.endsWith('.bmp')||name.endsWith('.ico')||name.endsWith('.webp')||name.endsWith('.psd')||name.endsWith('.ai')||name.endsWith('.psb')||name.endsWith('.svg')){
             ico='/tp.png';
    } else if(name.endsWith('.mp4')||name.endsWith('.avi')||name.endsWith('.mkv')||name.endsWith('.flv')||name.endsWith('.mov')||name.endsWith('.rmvb')||name.endsWith('.rm')||name.endsWith('.wmv')||name.endsWith('.mpg')||name.endsWith('.mpeg')||name.endsWith('.3gp')){
             ico='/sp.png';
    } else if(name.endsWith('.mp3')||name.endsWith('.wav')||name.endsWith('.flac')||name.endsWith('.aac')||name.endsWith('.ape')||name.endsWith('.ogg')||name.endsWith('.wma')||name.endsWith('.ape')||name.endsWith('.m4a')||name.endsWith('.m4b')||name.endsWith('.m4p')){
             ico='/mp3.png';
    } else if(name.endsWith('.json')){
             ico='/json.png';
    }  else {
        ico=ic_file;
    }

    str_path=cs_path.replace(new RegExp("%2F", 'g'), "/");

    return `<a class="weui-cell  weui-cell_access" target="_blank" href="/down/`+ str_path + `" >
    <div class="weui-cell__hd"><img src="`+ ico + `" alt="" style="width: 32px; margin-right: 16px; display: block;"></div>
    <span class="weui-cell__bd">
        <span>`+ name + `</span>
        <div class="weui-cell__desc">`+ time +`  `+ size +`</div>
    </span>
    </a>`;
}

function clear_list() {
    $('#file_list').html('');
}
//添加item
function add_file(node) {
    $('#file_list').append(node);
}

let ic_dir = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAA7AAAAOwBeShxvQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAIoSURBVFiF7Ze/T9RgGMc/T9/WO+74IXdRNKCJxETPQaOJi8LoxiouTurmv+DAYvwH3JzVhOhgSHByMTqY6GBCCBFMcJFwURC4O1rbvo8DoIg9rvHuYOGTdGjfb/J88vZpn1Z0bKw7JjsiaCcJqMiCKQ1OyuhonLTeLG5MZlLQq/UCooqd/nwfuNcOAUfgSorcbR0fN20RACRF7hgzc0PtEJB47IGmCSq8EXjbOKjG+VG54Buv531puK/WkfO2L0cY+ZI5ksVfD84vTt91U5vCEBvH7qxU0GqV18PX+Xg2+e6GFmZXhPlc3zOX5dW0Do2xMbIeEBuXmVMX68Y8BwxQzhXFlWqtdQKbzA+cIch0pMq630vgX55DTJgY+Bn18ql8hyAqphb4VjjeMLPVeG722nOKztddw0EPTARPUws0ohqB3TRw8w2KAwyaCRara/i2u+niCqxHf85TPQWe+Jw2L3kX3GhaYCdip5xU74FV28dSPNB8QZR8VEbCiCe1h+kFWopCVLH42oWz58Xh98s/y9o+CWzjQOBA4EBg3wX+mgWxdwlrTtSJRrjBK0T99glUC49R52jdcG75Fp7/on0C4BGGIeWFMtsHRL4zT2/hMCoerebfHkgYTWm+2/+XHTsQ4h3y6D/ZnxgWjRKvt0wgv3QTa+rN/I0mbDVipxxLe3c5kWjNgqIOSOO/nRajMVu99kF0hi4iM4LQtSfVrWbigHMa21k35NEvWSq4Cnb1Ay8AAAAASUVORK5CYII=';
let ic_file = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAA7AAAAOwBeShxvQAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAJdSURBVFiF7ZfLaxNRFMa/c+8MbZO0xAgmGIIxUmtsQCkobsSNO12I7v0PXAjuBDeCCN0I/gvdu3HhQlHBBwouTA1UUoulKXmYSDp59TEzx4XUpmFm0tsMTRd+u5l7uN9vvnvunRmCh+r1+km2+CWAlFedm5byP79PIHRx8tKk4VYjvCawTfvafs0BoN1qThWNYn7h3cK4EgDPI23P07Ox5pM7+zXfVqPRPFbulPO517nQngBmv3JwkwIPQXQDXDs9KAAANI1WtLpVXcx9yEU8AWY/WU95nRvL1tVbfhgLKXcgGq1oZe3XajabPdJdo3VfMOg2AAL7YQ8kUyewIiQs0wQAbG5sjHbqnUUARx0BAMi/IP4oEAxganpnFcuFEggU7q7x3AUHoaED9C6Bp5gZlmUpGQgSENL9OR0B2KUJCssFFAslJQAShPMXzkHX9b0DuCmRTCCRTCgB9JPzSeirhbeUEjDqBgyjoWQgiBCLxyCEcx8494DLZLZtwzbVmpAFeUaqlEA4EkY4Eu5fqKBDeg64bsNVVEoVJQMCITOTga47WznfJefJ4onjiMWjygBSk67jSgcRCYImlNqmr4beA0M/iP4ncDgT+BfBAUThmQDbpv+OPZ+8ngBa+xWEWfbFt9PqgJmh6/r7XR5OxduIkpcw9uMsWE4MZM7QMKoFq2uBF2dS6VO1vgArWzPIjDwHSUCOA2DXf0sFit9z6XS61nu7F8AEgLfrD/CtfQUhWR3YNzZS+ngzdPc+ps03TuO7Xjuzn61HzHQPDL1pAvaAu4AZJYvo+uPL9MWt5g/5NsVsHsMO8wAAAABJRU5ErkJggg==';
let ic_apk = '/apk.png';
let ic_zip = '/zip.png';

let current_dirPath = 'Download';

function hideFileInfo() {
    $("#fileInfoDialog").hide();
}

function api() {
        $.post('/url',{
        shareUrl : $("#api_url").val()
        }, function (res) {
            warnToast('已发送');
        }).fail(function () {
            warnToast('发送失败');
        });
}

function apiCmd(mode) {
        $.post('/cmd',{
        shareUrl : mode+$("#api_cmd").val()
        }, function (res) {
            warnToast('已发送');
        }).fail(function () {
            warnToast('发送失败');
        });
}

function listFile( cs_path, isRefresh) {
    let url='/file/' + cs_path;
    if(isRefresh){
        url='/refile/' + cs_path;
    }

    $('#loadingToast').show();
    $.get(url, function (res) {
        let info = JSON.parse(res);
        //父目录
        let parent = info.parent;
        //用url编码，避免文件名有特殊符号与html冲突
        parent = encodeURIComponent(parent);

        current_dirPath = cs_path;

        let array = info.files;
        //如果在内部存储根目录，但没有文件，则提示
        if (!cs_path && array.length == 0){
            warnToast('读取目录失败，可能没有存储权限 或 没有SD卡、U盘！');
            return;
        }
        //清空文件列表
        clear_list();
        //显示当前位置 以及 添加返回上级
        $('#file_path').html(`当前位置：<a href="#" onclick="listFile('',false)">`+info.rootName+`</a>`);
        if (parent) {
            add_file(tpl_top(parent));
        }

        array.forEach(node => {
            let filePath=encodeURIComponent(node.path);
            if (node.dir === 1) {
                add_file(tpl_dir(node.name, node.time, filePath));
            } else {
                add_file(tpl_file(filePath, node.name, node.time, node.size));
            }
        });
        $('#loadingToast').hide();
    }).error(function(xhr,errorText,errorType){
        warnToast(xhr.responseText);
        $('#loadingToast').hide();
        if(xhr.status==404){
            listFile(current_dirPath, true);
        }

    });
}

function warnToast(msg) {
    $('#warnToastContent').html(msg);
    $('#warnToast').show();
    setTimeout(() => {
        $('#warnToast').hide();
    }, 3000);
}

var isInstall = false;

function uploadFile() {
    isInstall = false;
    $('#file_uploader').val("");
    $('#file_uploader').click();
}

function installApk() {
    isInstall = true;
    $('#file_uploader').val("");
    $('#file_uploader').click();
}

function uploadTip() {
    let files = $('#file_uploader')[0].files;
    if (files.length <= 0)
        return false;
    let tip = '';
    for (var i = 0; i < files.length; i++) {
        tip += (files[i].name) + ',';
    }

    if(isInstall){
        $('#uploadTipTitle').html('确定安装？');
    } else{
        $('#uploadTipTitle').html('确定上传？');
    }

    $('#uploadTipContent').html(tip);
    $('#uploadTip').show();
}

//上传文件
function doUpload(yes) {
    $('#uploadTip').hide();//关闭上传提示框
    if (yes == 0) {
        return;
    }
    if (yes == 1) {
        let files = $('#file_uploader')[0].files;
        if (files.length <= 0)
            return false;
        var formData = new FormData();
        if(isInstall){
            formData.append('path', '安装');
        } else{
            formData.append('path', current_dirPath);
        }

        for (i = 0; i < files.length; i++) {
           formData.append("files-" + files[i].size, files[i]);
        }
        $('#uploadingToast').show();
        $.ajax({
            url: '/upload',
            type: 'post',
            data: formData,
            processData: false,
            contentType: false,
            error:function () {
                warnToast('出错，可能文件不存在');
            },
            complete: function () {
                //关闭转圈圈
                $('.weui-toast__content').html("上传中");
                $('#uploadingToast').hide();
                //重新读取列表
                listFile(current_dirPath,true);
            },
            xhr: function(){ //获取ajaxSettings中的xhr对象，为它的upload属性绑定progress事件的处理函数
                myXhr = $.ajaxSettings.xhr();
                if(myXhr.upload){ //检查upload属性是否存在
                    //绑定progress事件的回调函数
                    myXhr.upload.addEventListener('progress',progressHandlingFunction, false);
                }
                return myXhr; //xhr对象返回给jQuery使用
            },
        });
    }
}


//上传进度回调函数：
function progressHandlingFunction(e) {
    if (e.lengthComputable) {
        //计算百分比
        var percent = (e.loaded/e.total)*100;
        //更新数据到进度条
        $('#progress').attr({value : e.loaded, max : e.total});
        $('#progress').html("" + percent.toFixed(2) + "%");
        $('#progress').css('width', percent.toFixed(2) + "%");
        if(e.loaded==e.total && e.total>(1024*1024*500)){
            $('.weui-toast__content').html("等待中");
            $('#progress').html("上传完毕：100%<br><br>安卓端正在接收中(因为安卓端处理慢，可关闭此页面不影响)");
        }
    }
}

var url = window.location.href;
listFile(current_dirPath,false);

