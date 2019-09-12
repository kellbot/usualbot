module.exports = (robot) ->

  robot.router.post "/turnbot/gameturn", (req, res) ->
    room   = 'CN9U5BFM2'
    data   = if req.body.payload? then JSON.parse req.body.payload else req.body
#    secret = data.secret

    robot.messageRoom room, "I have a secret: #{data.secret}"
    
    res.set 'Content-Type', 'text/plain'
    res.send 'OK'
