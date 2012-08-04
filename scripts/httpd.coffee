# Description
#  a sample of how to use httpd
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
  robot.router.get "/version", (req, res) ->
    res.end robot.version

