const functions = require('@google-cloud/functions-framework');

// Register an HTTP function with the Functions Framework
functions.http('helloGET', (req, res) => {
  res.send('Hello terraform example!');
});