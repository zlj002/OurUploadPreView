<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadSimpleFile.aspx.cs"
    Inherits="OurUpload.UploadSimpleFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/ajaxfileupload.js" type="text/javascript"></script>
    <script src="OurUpload/jquery.OurUpload.js" type="text/javascript"></script>
    <link href="OurUpload/Style/OurUpload.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        $(function () {
            //初始化控件
            $("#btnSelectFile").ourUpload("init", {
            });



            //获取已上传的文件
            $("#btnView").click(function () {
                var filesList = $("#btnSelectFile").ourUpload("getFiles");

                //获取时这样判断
                if (filesList != false) {
                    alert(filesList.length);
                }

            });




            $("#btnSelectFileTwo").ourUpload("init", {
                loddingImgPath: "/OurUpload/images/loading.gif"//指定loading图片的路径
            });



            //获取已上传的文件
            $("#btnViewTwo").click(function () {
                var filesList = $("#btnSelectFileTwo").ourUpload("getFiles");
            });


        });



    </script>
</head>
<body>
    <!--上传按钮-->
    <div>
        <img src="OurUpload/images/attach.png" /><a id="btnSelectFile" name="uploadfile"
            style="cursor: pointer;">添加附件</a>
    </div>
    <div>
        <input type="button" value="获取已上传的文件信息" id="btnView" />
    </div>


    <!--第二个-->
    <%--<div>
        <img src="OurUpload/images/attach.png" /><a id="btnSelectFileTwo" name="uploadfile" style="cursor: pointer;">添加附件</a>
    </div>
    <div>
        <input type="button" value="获取已上传的文件信息" id="btnViewTwo" />
    </div>

    <input type="text" />--%>
</body>
</html>
