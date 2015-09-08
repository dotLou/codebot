# Description:
#   Is it Friday?
#
# Dependencies:
#   moment
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   joshhsoj1902

moment = require 'moment'

module.exports = (robot) ->
  FRIDAY = 5;
  today = moment().get('date')
  friday = moment().day("Friday").get('date')
  robot.hear /is it friday|how long till friday|friday yet/i, (msg) ->
    if (friday - today == 0) or (friday - today == 7)
      msg.send "Yep, it's Friday"
    else
      msg.send "Nope, it's not Friday"
