sys = require 'sys'
http = require 'http'

http.createServer((request, response) ->
  sys.puts 'I got kicked'
  response.writeHeader 200, {"Content-Type": "text/plain"}
  response.write 'It works!'
  response.end()
).listen 8080

sys.puts 'Listening on port 8080'
