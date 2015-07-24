require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_conflict(xml, conflict)
        xml.tag!('fo:block', {
          padding: '4pt'
        }) do
          xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, 'Competing Interests: ') 
          Structure::Text.new(xml).format(conflict)
        end
      end

    end
  end
end
