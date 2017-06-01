# TODO: searchも作っていい感じに実装
module TwitterActions::IncrementalSearch

  include TwitterActions::Base

  attr_accessor :redis

  def initialize
    self.redis = Redis.new
  end

  def incremental_search(keyword)
    tweets = client.search(keyword,
                           count: 3,
                           result_type: "recent",
                           exclude: "retweets",
                           since_id: since_id(keyword))
    save_since_id(keyword, tweets)
    tweets
  end

  def reset_keyword_increment(keyword)
    redis.set(keyword, 0)
  end

  private
  def since_id(keyword)
    redis.get(keyword) || 0
  end

  def save_since_id(keyword, tweets)
    redis.set(keyword, tweets.attrs[:search_metadata][:max_id])
  end
end
