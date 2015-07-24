require 'jpts_formatter/presentation'

module JPTSFormatter
  module Structure
    class Figure
      include Presentation

        def initialize(xml)
          @xml = xml
        end

        attr_reader :xml

        def format(figure)
          format_figure(figure)
        end

    end
  end
end
