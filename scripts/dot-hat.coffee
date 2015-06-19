# Description:
# Images for dot hats
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Author:
# waynegrhaam
hats = [
  'http://madcapz.net/wp-content/uploads/2011/05/Polkadotpink.jpg'
  'http://www.highsnobiety.com/uploads/pics/fredperry_dot_hats_2.jpg'
  'http://www.peterandjanestore.com/ekmps/shops/andersenjesper/images/brights-and-stripes-polka-dot-hat-3-6m-8878-p.jpg'
  'http://www.e-jules.com/dot_hat.jpg'
  'http://origin.kaboodle.com/hi/img/c/0/0/153/4/AAAADBbKAVMAAAAAAVNJuQ.jpg?v=1304947920000'
  'http://www.ohbabystyle.com/images/magictoolbox_cache/3bf842518f40ca6b8a10b619b8e02daf/42004775/thumb300x300/polka_dot_hat.jpg'
  'http://www.mrcostumes.com/images/pz/2069/polka-dot-top-hat-59425.jpg'
  'http://shop.madcapz.net/images/Aquadot.jpg'
]

module.exports = (robot) ->
    robot.hear /.*(dot hat).*/i, (msg) ->
          msg.send msg.random hats

