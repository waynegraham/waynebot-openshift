# Description:
# Meme generator
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Author:
# lilybethshields

memes = [
    "'Afraid to Ask' Andy - afraid",
    "Bad Luck Brian - blb",
    "Condescending Wonka - wonka",
    "Conspiracy Keanu - keanu",
    "Do It Live! - live",
    "Doge - doge",
    "Ermahgerd - ermg",
    "First World Problems - fwp",
    "Forever Alone - fa",
    "Futurama Fry - fry",
    "Good Guy Greg - ggg",
    "I Can Has Cheezburger? - icanhas",
    "Insanity Wolf - iw",
    "Laughing Lizard - ll",
    "Matrix Morpheus - morpheus",
    "One Does Not Simply Walk into Mordor - mordor",
    "Oprah You Get a Car - oprah",
    "Pepperidge Farm Remembers - remembers",
    "Philosoraptor - philosoraptor",
    "Scumbag Brain - sb",
    "Scumbag Steve - ss",
    "Stop Trying to Make Fetch Happen - fetch",
    "Success Kid - success",
    "That Would Be Great - officespace",
    "The Most Interesting Man in the World - interesting",
    "The Rent is Too Damn High - toohigh",
    "X all the Y - xy",
    "X, X Everywhere - buzz",
    "You Sit on a Throne of Lies - elf",
    "You Were the Chosen One! - chosen",
    "[10] Guy - 10guy"
]


module.exports = (robot) ->

  


  robot.respond /meme list/i, (msg) ->
  	msg.send(item) for item in memes

   robot.respond /meme me/i, (msg) ->
    msg.send "http://memegen.link/fwp/someone-on-the-internet/disagrees-with-biscuit.jpg"


