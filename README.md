# What is it?

This is a setup template for hubot with hubot-irc

# Requirement
* [Node.js](http://nodejs.org/)
* [CoffeeScript](http://coffeescript.org/)
* [Redis](http://redis.io/)

# How to use?

## Install hubot
```
git clone git@github.com:fumiz/hubot-ircbot-example.git
cd hubot-ircbot-example
npm install
```

## Modify IRC server settings
runhubot.sh
```
#!/bin/bash
 
export HUBOT_IRC_SERVER="your.ircserver.example.com"
export HUBOT_IRC_PORT="6667"
export HUBOT_IRC_USERNAME="your_username"
# if IRC server require your password
# export HUBOT_IRC_PASSWORD="your_password"
export HUBOT_IRC_ROOMS="#channel1, #channel2"
export HUBOT_IRC_NICK="mybot"
 
./node_modules/hubot/bin/hubot -a irc -n mybot
```

## Run
```
./runhubot.sh
```

