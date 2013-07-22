# Description:
#   Display a random quote about UX.
#   Based on grumpycat.coffee
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot design advice - Receive some advice about the practice of UX
#
# Author:
#  Meredith Noble 

quotes = [
  "Nothing is more terrible than activity without insight. - Thomas Carlyle",
  "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away. - Antoine De Saint-Exupery",
  "A common mistake that people make when trying to design something completely foolproof is to underestimate the ingenuity of complete fools. - Douglas Adams",
  "The power of the Web is in its universality. Access by everyone regardless of disability is an essential aspect. - Tim Berners-Lee",
  "One should aim not at being possible to understand, but at being impossible to misunderstand. - Quintilian",
  "A well-designed and humane interface does not need to be split into beginner and expert subsystems. - Jef Raskin",
  "Want your users to fall in love with your designs? Fall in love with your users. - Dana Chisnell",
  "If we want users to like our software, we should design it to behave like a likeable person. - Alan Cooper",
  "If I asked people what they wanted, they would have said 'Faster Horses'. - Henry Ford",
  "Don't make me think. - Steve Krug",
  "Clutter is a failure of design, not an attribute of information. - Edward Tufte",
  "The only intuitive interface is the nipple. After that it's all learned. - Bruce Ediger",
  "Design must seduce, shape, and more importantly, evoke an emotional response. - April Greiman",
  "Don't make something unless it's both necessary and useful. But if it is both necessary and useful, don't hesitate to make it beautiful. - Josh Porter",
  "The details are not the details. They make the design. - Charles Eames",
  "It’s art if can’t be explained. It’s fashion if no one asks for an explanation. It’s design if it doesn’t need explanation. - Wouter Stokkel",
  "Designers shooting for usable is like a chef shooting for edible. - Aarron Walter",
  "Good design must necessarily, in my opinion, have an impact on people’s lives, no matter how seemingly small. Good design changes things. - Garr Reynolds",
  "Designing without research is like getting into a taxi and just saying, 'Drive.' - Facebook product manager"
]


module.exports = (robot) ->
  robot.respond /design advice/i, (msg) ->
    msg.send quotes[Math.floor(Math.random()*quotes.length)]
