module TwitterActions::Search

  include TwitterActions::Base

  attr_accessor :redis

  def initialize
    self.redis = Redis.new
  end

  def search(keyword)
    tweets = client.search(keyword,
                           count: 100,
                           result_type: "recent",
                           exclude: "retweets",
                           since_id: since_id(keyword))
    save_since_id(keyword, tweets)
    tweets.to_a
  end

  private
  def since_id(keyword)
    redis.get(keyword) || 0
  end

  def save_since_id(keyword, tweets)
    redis.set(keyword, tweets.attrs[:search_metadata][:max_id])
  end
end