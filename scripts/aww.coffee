# Description:
#   Random image from /r/aww
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot aww me - Pull a randome image from /r/aww
#   hubot aww bomb [n] - Pull a random number of images from /r/aww/
#
# Author:
#   waynegraham

_ = require("underscore")

module.exports = (robot) ->

  robot.respond /aww me/i, (msg) ->
    msg.http('http://www.reddit.com/r/aww.json')
      .get() (err, res, body) ->
        try
          data = JSON.parse body
          children = data.data.children
          post = msg.random(children).data

          msg.send "#{post.title} - #{post.url}"
        catch ex
          msg.send "Meh, something went WAY wrong - #{ex}"

  robot.respond /aww bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http('http://www.reddit.com/r/aww.json')
      .get() (err, res, body) ->
        try
          data = JSON.parse body
          children = data.data.children

          _(count).times ->
            post = msg.random(children).data
            msg.send "#{post.title} - #{post.url}"
        catch ex
          msg.send "Meh, something went WAY wront - #{ex}"

