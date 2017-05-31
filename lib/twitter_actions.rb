require "twitter_actions/version"
require "twitter_actions/base"
require "twitter_actions/client"
require "twitter_actions/tweet"
require "twitter_actions/follow"
require "twitter_actions/search"
require "twitter_actions/config"

module TwitterActions
  include Follow
  include Search
  include Tweet
end
