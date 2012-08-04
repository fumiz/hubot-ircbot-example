# Description
#  a sample of how to use cron on hubot
#
# Dependencies:
#   "cron": ">=0.3.4"
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   None
#
# Author:
#   fumiz
cronJob = require('cron').CronJob

module.exports = (robot) ->
  send = (room, msg) ->
    response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
    response.send msg

  # *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  new cronJob('0 0 * * * * *', () ->
    send '#your-channel', "current time is #{new Date().getHours()}:00."
  ).start()

