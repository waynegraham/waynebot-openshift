# Description:
#   A port of http://motivate.im/
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   !h10 <username> - Hubot gives the user a high ten
#   ^10 <username> - Hubot gives the user a high ten
#   high ten <username> - Hubot gives the user a high ten
#
# Author:
#   waynegraham

module.exports = (robot) ->

  robot.hear /^(!h10|^10|high ten) (.+)$/i, (msg) ->
    user = msg.match[2]

    msg.emote "high tens #{user}"

