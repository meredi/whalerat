# Description:
#  Overhears FPIK and shows french press photos. 

module.exports = (robot) ->
  robot.hear /(FPIK|coffee|french press in kitchen)/i, (msg) ->
    imageMe msg, "french press coffee", (url)  ->
      msg.send url

  robot.hear /(chemex|CHIK|CIK)/i, (msg) ->
    imageMe msg, "chemex dripping", (url)  ->
      msg.send url

  robot.hear /floater/i, (msg) ->
     msg.send 'http://assets.perfectlytimedphotos.com/hashed_silo_content/silo_content/20922/resized/perfect.jpg'

imageMe = (msg, query, cb) ->
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"

