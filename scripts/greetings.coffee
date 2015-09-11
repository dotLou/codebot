# Description:
#   Responds to simple hello/goodbye type actions
#
# Commands:
#   versabot hello,hi,yo,hola - responds with random hello response
#   hello,hi,yo,hola versabot - responds with random hello response
#   versabot goodbye,bye,adios - responds with random goodbye response
#   goodbye,bye,adios versabot - responds with random goodbye response
#
#
# Author:
#   dotLou

enterReplies = ['Hi', 'Howdy Partner','YO', 'Hello friend.', 'I see you']
leaveReplies = ['DONT GO!', 'Fine.. just leave. I see how it is.', 'Adios amigo.']

module.exports = (robot) ->
  robot.respond /(hi)|(hello)|(yo)|(hola)/i, (res) ->
    res.send res.random enterReplies
  robot.hear /(hi)|(hello)|(yo)|(hola) .?versabot/i, (res) ->
    res.send res.random enterReplies
  robot.respond /(bye)|(adios)/i, (res) ->
    res.send res.random leaveReplies
  robot.hear /(bye)|(adios) .?versabot/i, (res) ->
    res.send res.random leaveReplies
  robot.respond /thanks/i, (res) ->
    res.send "You're welcome"
  robot.hear /thanks .?versabot/i, (res) ->
    res.send "You're welcome"

