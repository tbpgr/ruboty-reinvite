require "ruboty/reinvite/actions/reinvite"

module Ruboty
  module Handlers
    class Reinvite < Base
      on /reinvite #(?<channel>.+)/, name: 'reinvite', description: 'reinvite bot'

      def reinvite(message)
        Ruboty::Reinvite::Actions::Reinvite.new(message).call
      end
    end
  end
end
