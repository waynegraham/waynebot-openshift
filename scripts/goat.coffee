# Description:
#   Screaming Goat
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (goat) - Show a screaming goat
#
# Author:
#   waynegraham

videos = [
  'https://www.youtube.com/watch?v=SIaFtAKnqBU&t=2s'
]

module.exports = (robot) ->
  robot.hear /.*(stay positive).*/i, (msg) ->
    msg.send msg.random videos

