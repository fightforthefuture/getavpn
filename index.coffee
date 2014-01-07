#!/usr/bin/coffee

express = require('express')
app = express()

app.use(express.static(__dirname + '/public'))

port = process.env.PORT || 8000
app.listen(port)

console.log "Server is listening on port #{port}..."
