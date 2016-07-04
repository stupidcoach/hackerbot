module SlackMathbot
  module Commands
    class Command
      def initialize(action, message)
        @action = action
        @message = message
        client = Slack::Web::Client.new
      end

      def command action
        send(@action)
      end

      def news
        if /(\d+)/ === @message
          @news = RubyHackernews::Entry.newest.all($1)
        else
          @news = RubyHackernews::Entry.newest.all.first
        end

      end

      def jobs
        if /(\d+)/ === @message
          @news = RubyHackernews::Entry.jobs.all($1)
        else
          @news = RubyHackernews::Entry.jobs.all.first
        end
      end

      def shows
        if /(\d+)/ === @message
          @news = RubyHackernews::Entry.shows.all($1)
        else
          @news = RubyHackernews::Entry.shows.all.first
        end
      end

      def build data
        client.say
      end

    end
  end
end
