using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OurHelper;

namespace OurUpload.Upload
{
    public partial class SaveByUploadFileData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UploadFiles();
        }

        protected void UploadFiles()
        {

            /***********************建议此段代码请了解源码后修改*****************************/
            FileUploadHelper fuHelper = new FileUploadHelper();

            //上传目录
            object uploadDir = Request.QueryString["uploadDir"];
            if (uploadDir != null && !string.IsNullOrEmpty(uploadDir.ToString()))
            {
                fuHelper.UploadDir = uploadDir.ToString();
            }
            //允许的扩展名
            object extensionLim = Request.QueryString["extensionLim"];

            if (extensionLim != null && !string.IsNullOrEmpty(extensionLim.ToString()))
            {
                fuHelper.ExtensionLim = extensionLim.ToString();
            }
            //文件大小限制
            object fileLengthLim = Request.QueryString["fileLengthLim"];
            if (fileLengthLim != null && !string.IsNullOrEmpty(fileLengthLim.ToString()))
            {
                fuHelper.FileLengthLim = Convert.ToInt32(fileLengthLim.ToString());
            }
            //禁止的后缀名,最新添加
            object forbiddenExtensionLim = Request.QueryString["forbiddenExtensionLim"];
            if (forbiddenExtensionLim != null && !string.IsNullOrEmpty(forbiddenExtensionLim.ToString()))
            {
                fuHelper.ForbiddenExtensionLim = forbiddenExtensionLim.ToString();
            }
            object fileGuid = Request.QueryString["fileGuid"];
            if (fileGuid != null && !string.IsNullOrEmpty(fileGuid.ToString()))
            {
                fuHelper.FileGuid = fileGuid.ToString();
            }
            HttpFileCollection files = Request.Files;
            string result = fuHelper.SaveAs(files);
            Response.Write(result);
            Response.End();
            /***********************建议此段代码请了解源码后修改*****************************/
        }

    }
}