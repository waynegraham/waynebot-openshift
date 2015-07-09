# Description:
#   Yelling from Brick Tamland
#
# Configuration:
#   None
#
# Depedencies:
#   None
#
# Commands:
#   ALL CAPS - Reply with video

links = [
  "https://www.youtube.com/watch?v=7pdWAcK6Eh8&feature"
]

module.exports = (robot) ->
  robot.hear ///
    (\b([A-Z]{2,}\s+)([A-Z]{2,})\b)|
    (\b[A-Z]{5,}\b)
    ///, (msg) -> msg.send links.random
