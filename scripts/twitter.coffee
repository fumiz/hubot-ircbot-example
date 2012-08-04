# Description
#  a sample of how to access to Web API
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   This sample can parse only utf-8 websites
#
# Author:
#   fumiz
module.exports = (robot) ->
  robot.respond /twitter (.*)/i, (msg) ->
    keyword = encodeURIComponent msg.match[1]
    request = msg.http('http://search.twitter.com/search.json')
                 .query(q: keyword)
                 .get()
    request (err, res, body) ->
      json = JSON.parse body
      msg.send json.results[0].text if json.results.length > 0

