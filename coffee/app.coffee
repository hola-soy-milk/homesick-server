express = require 'express'
bodyParser = require('body-parser')

app = express()
port = process.env.PORT || 5000

app.use express.static __dirname
   .use bodyParser.urlencoded {extended: true}
   .use bodyParser.json()

require('./routes/routes.js')(app)

app.listen(port)

console.log "Listening on port #{port}"
