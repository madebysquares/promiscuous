module Replicable
  module AMQP
    module Fake
      mattr_accessor :messages
      self.messages = []

      def self.configure
      end

      def self.publish(msg)
        self.messages << msg
      end

      def self.clear
        self.messages.clear
      end
    end
  end
end
