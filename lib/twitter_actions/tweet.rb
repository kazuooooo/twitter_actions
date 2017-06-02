module TwitterActions::Tweet

  include TwitterActions::Base

  def tweet(message, opt={})
    client.update(message)
  end

  def reply(tweet, message)
    client.update("@#{tweet.user.screen_name} #{message}", in_reply_to_status_id: tweet.id)
  end

  def retweet(tweet)
    client.retweet(tweet)
  end
end
