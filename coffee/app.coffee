express = require 'express'
busyboy = require('connect-busboy')

app = express()
port = process.env.PORT || 5000

app.use express.static __dirname
   .use busyboy()

require('./routes/routes.js')(app)

app.listen(port)

console.log "Listening on port #{port}"
