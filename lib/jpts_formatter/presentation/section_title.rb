require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_section_title(xml, title)
        xml.tag!('fo:block', {
          'font-family': 'DroidSans',
          'font-size': '10pt',
          'font-weight': 'bold',
          'padding-top': '9pt'
        }) do
          Structure::Text.new(xml).format(title)
        end
      end

    end
  end
end
