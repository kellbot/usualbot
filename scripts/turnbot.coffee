module.exports = (robot) ->

  robot.router.get "/flybot/message", (req, res) ->
    room   = 'CN9U5BFM2'
    robot.messageRoom room, "test"
    
    res.set 'Content-Type', 'text/plain'
    res.send 'OK'
