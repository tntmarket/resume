#! /bin/node

var express = require('express');
var app = express();

app.get('/', function(req, res){
   res.sendfile('build/resume.html');
});

app.configure(function() {
   app.use(express.static(__dirname + '/build'));
});

app.listen(8080);

console.log('listening on port 8080');
