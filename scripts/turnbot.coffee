module.exports = (robot) ->

  robot.router.post "/turnbot/gameturn", (req, res) ->
    room   = 'CN9U5BFM2'
    data   = if req.body.payload? then JSON.parse req.body.payload else req.body

    robot.messageRoom room, "It is #{data.value2}'s turn in game #{data.value1} (turn #{data.value3}."
    
    res.set 'Content-Type', 'text/plain'
    res.send 'OK'
