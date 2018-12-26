// See https://www.techighness.com/post/node-expressjs-endpoint-to-upload-and-process-csv-file/
// Leaflet w/ node tutorials: https://github.com/renelikestacos/Web-Mapping-Leaflet-NodeJS-Tutorials/blob/master/README.md

'use strict';

const http = require('http');
const fs = require('fs');

const express = require('express');
const multer = require('multer');
const csv = require('fast-csv');

const Router = express.Router;
const upload = multer({ dest: 'uploads/' });
const app = express();
const router = new Router();
//add pgsql module to pass off upload csv too
var pgsql = require('./pgsql_mod');
const fileRows = [];

router.post('/', upload.single('userFile'), function (req, res) {
  // open uploaded file
  csv.fromPath(req.file.path)
    .on("data", function (data) {
      fileRows.push(data); // push each row
      console.log("%s, %s", data[0], data[1]); //A nice check
    })
    .on("end", function () {
      //console.log(fileRows)
      pgsql.myvar = fileRows;
      pgsql.test();
      fs.unlinkSync(req.file.path);   // remove temp file
      console.log("file uploaded and read!");
      //now insert into pgsql
      pgsql.myClient();
      res.sendfile("hello_leaflet.html");
      //res.sendStatus(200);
    })
});

app.use('/upload_csv', router);


app.get('/',function(req,res){
    res.sendFile(__dirname + "/index.html");
});

app.get('/index.html', function (req, res) {
   res.sendFile( __dirname + "/" + "index.html" );
})


var server = app.listen(8080, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Example app listening at http://%s:%s", host, port)
})