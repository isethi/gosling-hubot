# Description:
#   Programmer Ryan Gosling Meme generator
#
# Configurations:
#  HUBOT_TUMBLE_API_KEY
#
# Dependencies:
#  tumblrbot@0.1.0
#  hubot-slack@3.4.2
#
# Commands:
#  gosling humor me
#
# Author:
#  Iccha Sethi

tumblr = require 'tumblrbot'
gosling_tumblr = "programmerryangosling.tumblr.com"

module.exports = (robot) ->
  robot.hear /make me roll my eyes/i, (res) ->
    tumblr.photos(gosling_tumblr).random (post) ->
      res.send post.photos[0].original_size.url

