#!/bin/bash
 
export HUBOT_IRC_SERVER="your.ircserver.example.com"
export HUBOT_IRC_PORT="6667"
export HUBOT_IRC_USERNAME="your_username"
# if IRC server require your password
# export HUBOT_IRC_PASSWORD="your_password"
export HUBOT_IRC_ROOMS="#channel1, #channel2"
export HUBOT_IRC_NICK="mybot"
 
./node_modules/hubot/bin/hubot -a irc -n mybot
