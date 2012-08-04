# Description
#  a sample of how to store data
#
# Dependencies:
#    None
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
module.exports = (robot) ->
  robot.hear /^(.+)\+\+$/i, (msg) ->
    user = msg.match[1]

    if not robot.brain.data[user]
      robot.brain.data[user] = 0

    robot.brain.data[user]++
    robot.brain.save()

    msg.send robot.brain.data[user]

