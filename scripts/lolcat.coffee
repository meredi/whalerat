# Description:
#   Load a random LOLcat.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lolcat me - Receive a LOLcat
#   hubot lolcat bomb N - get N LOLcats
#
# Author:
#   trey

cats = [
  "http://lh3.ggpht.com/shaileshdoke/SC4NFMUIzdI/AAAAAAAAAlA/4YzweXP_ha4/let%20me%20check%20my%20emails%20lolcat%5B4%5D.jpg",
  "http://lolcat.com/pics/pctechsupportcat.jpg",
  "http://www.lfkweb.com/img/catpics/funny-pictures-cats-try-to-restart-computer.jpg",
  "http://emmajsutherland.files.wordpress.com/2011/04/lolcat-3.png",
  "http://4.bp.blogspot.com/-cPjn01V2yTg/Ta4MpFfvT8I/AAAAAAAAAZs/Xd0EIq0C7O0/s320/procrastination_lolcat.jpg",
  "http://rashfilms.thegentlemanloser.com/uploaded_images/758660-lolcat_super-785506.jpg",
  "http://blogs.studentlife.utoronto.ca/lifeatuoft/files/2011/05/lolcat_bored.jpg",
  "http://media-cache-ak1.pinimg.com/736x/4b/fb/5b/4bfb5b631d19c5da20c01bf00ce15467.jpg",
  "http://media-cache-ak1.pinimg.com/736x/19/5e/44/195e44398aa646f33b53784a9dea7d31.jpg",
  "http://media-cache-ec3.pinimg.com/736x/8c/4d/e0/8c4de01dfae7fa8c6710e3eb9de1ba6c.jpg",
  "http://media-cache-ak2.pinimg.com/736x/4b/1a/68/4b1a68b83017d550fe201318d063ab52.jpg",
  "http://media-cache-ak3.pinimg.com/236x/3e/46/fa/3e46fadb7ee83445c593a05ae6f46405.jpg"
]

module.exports = (robot) ->
  robot.respond /lolcat me/i, (msg) ->
    msg.send cats[Math.floor(Math.random()*cats.length)]

  robot.respond /lolcat bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [1..count] by 1
      msg.send cats[Math.floor(Math.random()*cats.length)]
