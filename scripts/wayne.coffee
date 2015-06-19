# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   oh no - http://no.scholarslab.org
#   oh yeah - http://yes.scholarslab.org
#
# Author:
#   clioweb

module.exports = (robot) ->
  robot.hear /oh yeah\b/i, (msg) ->
    msg.send 'http://yes.scholarslab.org'

  robot.hear /oh no\b/i, (msg) ->
      msg.send 'http://no.scholarslab.org'
