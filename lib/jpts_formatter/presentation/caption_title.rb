module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_caption_title(xml, title)
        xml.comment! 'caption title'
        xml.tag!('fo:inline', {
          'font-family': 'DroidSans',
          'font-size': '9pt',
          'font-weight': 'bold'
        }) do
          Structure::Text.new(xml).format(title)
        end
      end

    end
  end
end
