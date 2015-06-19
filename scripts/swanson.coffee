# Description
#   Provide some Ron Swanson wisdom.
#
# Commands:
#   hubot swanson me - Triggers the event
#   hubot swanson bomb [n] - Pull a random number of Swanson gifs

quotes = [
    #"Never half-ass two things. Whole-ass one thing."
    #"I never thought I would say this to you son, but you may be over thinking this."
    #"I hate riddles, and other such nonsense."
    #"Straight down the middle, no hook, no spin, no fuss. Anything more and this becomes figure skating."
    #"It is a beautiful night for the end of the world."
    #"No home is complete without a proper toolbox."
    #"We have one activity planned: not getting killed."
    #"I once worked with a man for three years and never got to know his name. Best friend I ever had."
    #"One rage every three months is permitted. Try not to hurt anyone who doesn't deserve it."
    #"Friends: One to three is sufficient."
    #"Sting like a bee. Do not float like a butterfly. That's ridiculous."
    #"Don't waste energy moving unless necessary."
    #"Building walls makes you strong. Defending them makes you even stronger."
    #"Give 100%. 110% is impossible Only idiots recommend that."
    #"If you want to experience other 'cultures,' use an atlas or ham radio."
    #"I hope the rest of your day is cool beans.",
    "http://i.imgur.com/kQOZOLd.jpg",
    "http://i.imgur.com/x7Sle.jpg",
    "http://i.imgur.com/NCnM8KE.jpg",
    "http://i.imgur.com/yNSz3os.jpg",
    "http://i.imgur.com/BlNkVw9.jpg",
    "http://i.imgur.com/mOw7acG.jpg",
    "http://i.imgur.com/Ez41HO9.jpg",
    "http://i.imgur.com/Z9XNYW8.jpg",
    "http://i.imgur.com/roudIZk.gif",
    "http://i.imgur.com/eLazeBA.png",
    "http://i.imgur.com/TbGtoHd.jpg",
    "http://i.imgur.com/mLhMsIN.jpg",
    "http://i.imgur.com/3DuzOoX.jpg",
    "http://i.imgur.com/dnJMAwX.jpg",
    "http://i.imgur.com/ZmB4icU.jpg",
    "http://i.imgur.com/a3xCTv4.jpg",
    "http://i.imgur.com/QK5OLcT.gif",
    "http://i.imgur.com/EYj9BWC.jpg",
    "http://i.imgur.com/knYyNKv.jpg",
    "http://i.imgur.com/y82G1.jpg",
    "http://img.ifcdn.com/images/9007c5ce17add186590b51b217f4cf68428c442e1cd8e1f9d0728700b1c9c0d8_1.gif",
    "http://a.fod4.com/misc/bestedyou.gif",
    "http://a.fod4.com/misc/swansonsebastian.gif",
    "http://a.fod4.com/misc/foodtossswanson.gif",
    "http://assets0.ordienetworks.com/misc/ronrunfall.jpg",
    "http://a.fod4.com/misc/swansonface.gif",
    "http://a.fod4.com/misc/ronpuppy.gif",
    "http://a.fod4.com/misc/swansonflame.gif",
    "http://a.fod4.com/misc/burger.gif",
    "http://a.fod4.com/misc/ronsalad2.gif",
    "http://a.fod4.com/misc/swansonchair.gif",
    "http://a.fod4.com/misc/swansonhate.gif",
    "http://a.fod4.com/misc/swansondontcare.gif",
    "http://a.fod4.com/misc/swansonsmile.gif",
    "http://a.fod4.com/misc/swansonhell.gif",
    "http://a.fod4.com/misc/swansondance.gif",
    "http://a.fod4.com/misc/dancedance.gif",
    "http://a.fod4.com/misc/ronmeat.gif",
    "http://a.fod4.com/misc/giraffeballoon.gif",
    "http://a.fod4.com/misc/swansonsmile1.gif",
    "http://a.fod4.com/misc/avermonsenmustache.gif",
    "http://a.fod4.com/misc/ronswanson-gun.gif",
    "http://a.fod4.com/misc/swansonbuffet.gif",
    "http://a.fod4.com/misc/ronfuckingswanson.gif",
    "http://a.fod4.com/misc/sebastianswason.gif",
]

module.exports = (robot) ->
  robot.respond /swanson me/i, (msg) ->
    msg.send msg.random quotes

  robot.respond /swanson bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    _(count).times ->
      msg.send msg.random quotes
