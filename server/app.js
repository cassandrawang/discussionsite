// dependencies
var express = require('express'),
    path = require('path'),
    mongoose = require('mongoose');

var app = express();

// mongoose configuration
mongoose.connect('mongodb://localhost/test');

// verify successful connection
var db = mongoose.connection;
db.on('error', console.error.bind(console, 'connection error:'));
db.once('open', function() {
  // we're connected!
});

app.get('/', function(req, res) {
	res.sendFile(path.join(__dirname, '../client/', 'index.html'));
});

app.listen(3000, function() {
	console.log('listening on port 3000');
});
