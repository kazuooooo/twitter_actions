require 'singleton'
require 'twitter'
class TwitterActions::Client
  include Singleton
  attr_accessor :client

  def initialize
    self.client = Twitter::REST::Client.new do |config|
      config.consumer_key        = TwitterActions.config.consumer_key
      config.consumer_secret     = TwitterActions.config.consumer_secret
      config.access_token        = TwitterActions.config.access_token
      config.access_token_secret = TwitterActions.config.access_token_secret
    end
  end
end