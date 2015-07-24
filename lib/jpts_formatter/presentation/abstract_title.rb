require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_abstract_title(xml, title)
        xml.tag!('fo:inline', {
          'font-family': 'DroidSans',
          'font-size': '10pt',
          'font-weight': 'bold',
          'font-style': 'italic'
        }) do
          Text.new(xml).format(title)
        end
      end

    end
  end
end
