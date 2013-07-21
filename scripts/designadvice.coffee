# Description:
#   Display a random quote about UX. Based on grumpycat.coffee
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot design advice - Receive a quote 
#
# Author:
#  Meredith Noble 

quotes = [
"\"Nothing is more terrible than activity without insight.\" - Thomas Carlyle"
]

module.exports = (robot) ->
  robot.respond /design advice/i, (msg) ->
    msg.send quotes[Math.floor(Math.random()*quotes.length)]

  robot.respond /how many quotes are there/i, (msg) ->
    msg.send "There are #{quotes.length} quotes."
