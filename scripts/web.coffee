# Description:
#   Just a web interface
#
# Dependencies:
#   none

module.exports = (robot) ->
  robot.router.get '/', (req, res) ->
    res.send('Nothing to see here')
