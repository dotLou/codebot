# Description:
#   Responds to simple hello/goodbye type actions
#
# Commands:
#   versabot hello,hi,yo,hola - responds with random hello response
#   versabot goodbye,bye,adios - responds with random goodbye response
#
#
# Author:
#   dotLou

enterReplies = ['Hi', 'Howdy Partner','Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
leaveReplies = ['DONT GO!', 'Fine.. just leave. I see how it is.', 'Adios amigo.']

module.exports = (robot) ->
  robot.respond /(hi)|(hello)|(yo)|(hola)/i, (res) ->
    res.send res.random enterReplies
  robot.respond /bye/i, (res) ->
    res.send res.random leaveReplies

