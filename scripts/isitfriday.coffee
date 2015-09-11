# Description:
#   This script listens for "Is it Friday"? and will respond accordingly.
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

#moment = require 'moment'

#module.exports = (robot) ->
  #today = moment()
  #friday = moment().day("Friday")
  #robot.hear /is it friday|how long till friday|friday yet/i, (msg) ->  
    #if (today.get('date') == friday.get('date')) and (today.get('month') == friday.get('month')) and (today.get('year') == friday.get('year'))
      #msg.send "Yep, it's Friday"
    #else
      ##It would be nice to give a time until friday, but moments doesn't seem to have a nice way to
      ##subtract 2 dates from eachother... I may come back to this.
      #msg.send "Nope, it's not Friday"

#Temporary re-write without moment
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
  today = new Date
  day = today.getDay()
  day = daylist[day]
  robot.hear /is it friday|how long till friday|friday yet/i, (msg) ->
    if (day == "Friday")
      msg.send "Yep, it's Friday"
    else
      #It would be nice to give a time until friday, but moments doesn't seem to have a nice way to
      #subtract 2 dates from eachother... I may come back to this.
      msg.send "Nope, it's not Friday"
  robot.hear /what day is it/i, (msg) ->
    msg.send "Today is "+day
