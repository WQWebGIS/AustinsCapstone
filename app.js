// See https://www.techighness.com/post/node-expressjs-endpoint-to-upload-and-process-csv-file/
// Leaflet w/ node tutorials: https://github.com/renelikestacos/Web-Mapping-Leaflet-NodeJS-Tutorials/blob/master/README.md

'use strict';
//core modules
const http = require('http');
const fs = require('fs');
const express = require('express');
const multer = require('multer');
const csv = require('fast-csv');
const bodyParser = require('body-parser'); //https://www.npmjs.com/package/body-parser
const Router = express.Router;
const upload = multer({ dest: 'uploads/' });
const app = express();
const router = new Router();
var path = require("path");

//add pgsql module to pass off upload csv too
var pgsql = require('./pgsql_mod');
const fileRows = [];

// set up the template engine
//const request = require('request');
//https://codeburst.io/build-a-weather-website-in-30-minutes-with-node-js-express-openweather-a317f904897b
app.use(express.static('public'));
app.set('view engine', 'ejs')
//for dom reading
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

router.post('/', upload.single('userFile'), function (req, res) {
  // open uploaded file
  csv.fromPath(req.file.path)
    .on("data", function (data) {
      fileRows.push(data); // push each row
      console.log("%s, %s", data[0], data[1]); //A nice check
    })
    .on("end", function () {
      //console.log(fileRows)
      pgsql.fileRows = fileRows;
      //pgsql.test(); just a tester function
      fs.unlinkSync(req.file.path);   // remove temp file
      console.log("file uploaded and read!");
      //now insert into pgsql
      pgsql.uploadCSV();
      res.sendfile("water_body_map.html");
      //res.sendStatus(200);
    })
});

app.use('/upload_csv', router);

app.use('/interp_water_body', function (req, res) {
  console.log("interpolate...");
  var active_wb_index;
  if (req.body.water_body=="Escambia Bay") {
    var wb_options = [["Escambia Bay","30.51,-87.13","selected",12], ["Bayou Texar","30.430264,-87.189095","",15]];
    active_wb_index = 2;
  }
  else {
    var wb_options = [["Bayou Texar","30.430264,-87.189095","selected",15], ["Escambia Bay","30.51,-87.13","",12]];
    active_wb_index = 1;
  }
  pgsql.getInterpolatedLayer(active_wb_index).then(function(geojson_res){ 
    var geoJSONObjs = [];
    geojson_res.forEach(function(value, idx) {
      geoJSONObjs.push(value.jsb);
    });
    res.render('index', {
      wb_options: wb_options,
      geojsonGrid: geoJSONObjs
    });
 });
});

app.use('/select_water_body', function (req, res) {
  console.log(req.body.water_body);
  var active_wb_index;
  if (req.body.water_body=="Escambia Bay") {
    var wb_options = [["Escambia Bay","30.51,-87.13","selected",12], ["Bayou Texar","30.430264,-87.189095","",15]];
    active_wb_index = 2;
  }
  else {
    var wb_options = [["Bayou Texar","30.430264,-87.189095","selected",15], ["Escambia Bay","30.51,-87.13","",12]];
    active_wb_index = 1;
  }
  pgsql.getSampleStations(active_wb_index).then(function(geojson_res){ 
    var geoJSONObjs = [];
    geojson_res.forEach(function(value, idx) {
      geoJSONObjs.push(value.jsb);
    });
    res.render('index', {
      wb_options: wb_options,
      geojsonStations: geoJSONObjs
    });
 });
});

app.get('/', function (req, res) {
  //TODO: wb_options should be populated from a pgsql query on the 
  //See: https://stackoverflow.com/questions/34878180/html-select-option-with-ejs/34878746
  var wb_options = [["Bayou Texar","30.430264,-87.189095","selected",15], ["Escambia Bay","30.51,-87.13","",12]];
  //Need to do asynch DB call using promises
  //See: https://stackoverflow.com/questions/50968385/in-node-pg-client-query-doesnt-return
  //Note to self: promises are hard
  pgsql.getSampleStations(1).then(function(geojson_res){ 
      var geoJSONObjs = [];
      geojson_res.forEach(function(value, idx) {
        geoJSONObjs.push(value.jsb);
      });
      res.render('index', {
        wb_options: wb_options,
        geojsonStations: geoJSONObjs
      });
   });
})

var server = app.listen(8080, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Example app listening at http://%s:%s", host, port)
})