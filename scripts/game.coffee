# Description:
#   Figure out what game to play
#
# Commands:
#   hubot where should we eat

module.exports = (robot) ->
  robot.hear /(what game should we play)/i, (msg) ->
    msg.send 'Let me think...'
    robot.http("https://scholarslab.github.io/games.json")
    .header('Accept', 'application/json')
    .get() (err, res, body) ->
      #if res.getHeader('Content-Type') isnt 'application/json'
        #msg.send "Didn't get back JSON :("
        #return

      data = null

      try
        data = JSON.parse body
      catch error
        msg.send "Ran into an error parsing JSON :("
        return
    
      game = data.games[Math.floor(Math.random() * data.games.length)]
      msg.send 'You should play ' + game + '.'

  robot.hear /(what game should we really play)/i, (msg) ->
    msg.send 'You should really play Dixit.'
