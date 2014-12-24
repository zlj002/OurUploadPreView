OurUploadPreView
================
preview page is “/OurUpload/RequestFileStreamByHttpUrl.aspx"
you need provide two parameters 
1--rawFileUrl    file's path
2--rawFileName   this name will dispaly on preview page
of course i used some plugins for example bootstrap...you can choose 

you can use to convert to local project file,
for example:
http://domain:port/OurUpload/RequestFileStreamByHttpUrl.aspx?
rawFileUrl=/upload/Attachment/2014/12/a.doc&rawFileName=a.doc


and you can use to convert to remote file, 
for example:
http://domain:port/OurUpload/RequestFileStreamByHttpUrl.aspx?
rawFileUrl=http://remotedomain:port/upload/Attachment/2014/12/a.doc&rawFileName=a.doc
