require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_paragraph(xml, paragraph)
        xml.tag!('fo:block', {
          'font-family': 'Gentium',
          padding: '6pt',
          'font-size': '10pt',
          'line-height': '1.5'
        }) do
          Structure::Text.new(xml).format(paragraph)
        end
      end

    end
  end
end
