require 'date'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_date(date)
        date.strftime("%B %e, %Y")
      end

    end
  end
end
