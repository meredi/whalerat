# Description:
#  Overhears FPIK and shows french press photos. 

module.exports = (robot) ->
  robot.hear /(floater|floaters)/i, (msg) ->
     msg.send 'http://assets.perfectlytimedphotos.com/hashed_silo_content/silo_content/20922/resized/perfect.jpg'
