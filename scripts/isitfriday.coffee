# Description:
#   This script listens for "Is it Friday"? and will respond accordingly.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   joshhsoj1902

daylist = [  
  'Sunday'  
  'Monday'  
  'Tuesday'  
  'Wednesday '  
  'Thursday'  
  'Friday'  
  'Saturday'  
]
module.exports = (robot) ->
  robot.hear /is it friday|how long till friday|friday yet/i, (msg) ->
    day = today()
    if (day == "Friday")
      msg.send "Yep, it's Friday"
    else
      msg.send "Nope, it's not Friday. It's "+day
  robot.hear /what day is it/i, (msg) ->
    msg.send "Today is "+today()

today = () ->
  daylist[(new Date).getDay()]
