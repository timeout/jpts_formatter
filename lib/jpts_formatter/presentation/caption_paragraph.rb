module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_caption_paragraph(xml, paragraph)
        xml.comment! 'caption title'
        xml.tag!('fo:inline', {
          'font-family': 'DroidSans',
          'font-size': '9pt',
        }) do
          Structure::Text.new(xml).format(paragraph)
        end
      end

    end
  end
end
