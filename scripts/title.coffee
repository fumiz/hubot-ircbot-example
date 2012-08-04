# Description
#  a sample of how to scrape websites
#
# Dependencies:
#   "cheerio": ">=0.9.0"
#   "request": ">=2.9.203"
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
request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /title (.*)/i, (msg) ->
    url = msg.match[1]
    options = 
      url: url
      timeout: 2000
      headers: {'user-agent': 'node title fetcher'}

    request options, (error, response, body) ->
      $ = cheerio.load body
      title = $('title').text().replace(/\n/g, '')
      msg.send title

