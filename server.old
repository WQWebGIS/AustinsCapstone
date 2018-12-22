// https://www.tutorialspoint.com/nodejs/nodejs_express_framework.htm
// https://riptutorial.com/node-js/example/14210/single-file-upload-using-multer
// https://www.npmjs.com/package/multer

var express =   require("express");
var multer  =   require('multer');
var app     =   express();
var fs 		= require('fs');
//add pgsql module to pass off upload csv too
var pgsql = require('./pgsql_mod');

app.get('/',function(req,res){
      res.sendFile(__dirname + "/index.html");
});

var storage =   multer.diskStorage({
  destination: function (req, file, callback) {
    fs.mkdir('./uploads', function(err) {
        if(err) {
            console.log(err.stack)
        } else {
            callback(null, './uploads');
        }
    })
  },
  filename: function (req, file, callback) {
    callback(null, file.fieldname + '-' + Date.now());
  }
});

app.post('/upload_csv',function(req,res){
    var upload = multer({ storage : storage}).single('userFile');
    upload(req,res,function(err) {
        if(err) {
            return res.end("Error uploading file.");
        }
        res.end("File is uploaded");
    });
    //console.log("test: " + pgsql.myClient());
});

app.get('/index.html', function (req, res) {
   res.sendFile( __dirname + "/" + "index.html" );
})

var server = app.listen(8080, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Example app listening at http://%s:%s", host, port)
})