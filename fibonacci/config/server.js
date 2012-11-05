var express = require('express'),
    request = require('request'),
    app     = express();

app.configure(function() {
  app.use(express.static(process.cwd() + "/generated"));
  app.use(express.bodyParser());
  app.use(express.errorHandler());
});

app.all('*', function(req, res) {
  var payload = req.method === "GET" ? req.query : req.body,
      url = "http://localhost:" + port() + req.path;

  request[req.method.toLowerCase()](url, { form: payload }, function(error, response, body) {
    if (!error && response !== undefined && response.statusCode === 200) {
      res.json(response.statusCode, body ? parseBody(body) : { message: "No body"});
    } else {
      res.json((response && response.statusCode) || 500, {
        message: "express server failed to proxy request",
        error: error
      });
    }
  });
});

var port = function() {
  return process.env.API_PORT || "3000";
};

var parseBody = function(body) {
  try {
    return JSON.parse(body);
  } catch(oops) {
    return body;
  }
};

module.exports = app;
