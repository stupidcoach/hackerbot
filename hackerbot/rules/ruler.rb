module Hackerbot
  module Rules
    module Rule

      def ruler data
        if news data
          :news
        elsif jobs data
          :jobs
        else
          :sorry
        end
      end

      def news data
        /news/i === data
      end

      def jobs data
        /jobs/i === data
      end

    end
  end
end
