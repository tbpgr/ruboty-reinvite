# Ruboty::Reinvite

An Ruboty Handler + Actions to kick and invite bot to Slack Channel.

[Ruboty](https://github.com/r7kamura/ruboty) is Chat bot framework. Ruby + Bot = Ruboty

[![Gem Version](https://badge.fury.io/rb/ruboty-reinvite.svg)](https://badge.fury.io/rb/ruboty-reinvite)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruboty-reinvite'
```

And then execute:

    $ bundle

## Commands

|Command|Pattern|Description|
|:--|:--|:--|
|[reivite](#reivite)|reinvite #<?channel>(.+)|kick and invite bot|

## Usage
### reivite
* kick and invite bot

~~~
reinvite #times_tb
~~~

## ENV

|Name|Description|
|:--|:--|
|SLACK_API_TOKEN|SlackAPI Token|

## Dependency

|Name|Description|
|:--|:--|
|Slack API|https://api.slack.com/|
|Slack API Ruby Client|https://github.com/aki017/slack-ruby-gem|

## Contributing

1. Fork it ( https://github.com/tbpgr/ruboty-reinvite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
