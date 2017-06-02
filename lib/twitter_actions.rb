require "twitter_actions/version"
require "twitter_actions/base"
require "twitter_actions/client"
require "twitter_actions/tweet"
require "twitter_actions/follow"
require "twitter_actions/incremental_search"
require "twitter_actions/config"

module TwitterActions
  include TwitterActions::Tweet
  include TwitterActions::IncrementalSearch
  include TwitterActions::Follow

  class << self
    def config
      @config ||= TwitterActions::Config.new
    end

    def configure(&block)
      config.tap(&block)
    end
  end
end
