# TwitterActions
TwitterActions is thin wrapper of [Twitter REST API gem](https://github.com/sferik/twitter). You can treat basic client actions(tweet, retweet, search, follow....) more easily with this gem.
(※ Now this gem is under development. Welcome to contribute :))

## Installation

```ruby
gem 'kazuooooo/twitter_actions'
# gem 'twitter_actions' Now, under development.
```

And then execute:

    $ bundle

Or install it yourself as:

    $ # gem install twitter_actions

## Usage

First you need to configure api authentications in initializers/twitter_actions.rb file. (You need to [create app](https://apps.twitter.com/) to get these authentications values)

```ruby
TwitterActions.configure do |config|
  config.consumer_key        = ENV['TWITTER_ACCESS_KEY_ID']
  config.consumer_secret     = ENV['TWITTER_SECRET_ACCESS_KEY']
  config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
end
```

And include TwitterActions module, you can easily run basic client action apis.

```ruby
class AwsomeBot
   include TwitterActions
   def nice_method
     # tweet
     tweet("hello twitter")
     # search
     tweets = search("wombat").to_a
     # reply
     reply(tweets.first, "yeeeh, wombat is so cute!!")
     # retweet
     tweets.each {|tweet| retweet(tweet)}
     # follow
     user = tweets.first.user
     follow(user)
   end
end
```

If you want to make bot reply specific keyword tweet like this.

```ruby
class WombatBot
  include TwitterActions
  def crawl_and_reply
    tweets = incremental_search("I want to have wombat in Australlia").to_a
    tweets.each do |tweet|
      reply(tweet, "Yes!! Me Too!!")
    end
  end
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO
* api options configurable
* fix follow bug
* make search and incremental search

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/twitter_actions.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

