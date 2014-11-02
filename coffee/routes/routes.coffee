fs = require 'fs'

module.exports = (app) ->
  app.get '/', (request, response) ->
    console.log "Got request for /"
    response.send "Upload something!"

  app.post '/submit', (request, response) ->
    req.pipe(req.busboy)
    req.busboy.on 'file', (fieldname, file, filename) ->
      console.log "Got #{filename}"
      fileStream = fs.createWriteStream "./sounds/#{filename}"
      file.pipe fileStream
      fileStream.on 'close', ->
        console.log "Upload of #{filename} complete!"
