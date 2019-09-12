module.exports = (robot) ->

  robot.router.get "/flybot/message", (req, res) ->
    res.set 'Content-Type', 'text/plain'
    res.send 'OK'
