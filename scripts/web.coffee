# Description:
#   Just a web interface
#
# Dependencies:
#   none

spawn = require('child_process').spawn

module.exports = (robot) ->
  robot.router.get "/", (req, res) ->
    res.end "Server time is: #{new Date()}"
