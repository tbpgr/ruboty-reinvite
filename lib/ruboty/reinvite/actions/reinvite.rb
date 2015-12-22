require "slack"
module Ruboty
  module Reinvite
    module Actions
      class Reinvite < Ruboty::Actions::Base
        def call
          message.reply(reinvite)
        rescue => e
          message.reply("Error #{e.message}")
        end

        private
        def reinvite
          ::Slack.configure { |config|config.token = ENV["SLACK_API_TOKEN"] }
          channel = message[:channel]
          option = { user: user_id, channel: channel_id(channel) }
          kick(option)
          invite(option)
          ":robot_face: success reinvite to #{channel}"
        end

        def user_id
          response = ::Slack.users_list
          validate_response(response)
          response["members"].find{ |e|e["name"] == ENV["SLACK_USERNAME"] }["id"]
        end

        def channel_id(channel)
          response = ::Slack.channels_list
          validate_response(response)
          response["channels"].find{ |e|e["name"] == channel }["id"]
        end

        def kick(option)
          response = ::Slack.channels_kick(option)
          validate_response(response)
        end

        def invite(option)
          response = ::Slack.channels_invite(option)
          validate_response(response)
        end

        def validate_response(response)
          return if response["ok"]
          fail response["error"]
        end
      end
    end
  end
end
