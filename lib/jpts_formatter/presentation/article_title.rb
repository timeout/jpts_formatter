require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_article_title(xml, title)
          xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-size': '18pt',
            'padding-top': '8pt',
          }) do 
            Structure::Text.new(xml).format(title)
          end
      end

    end
  end
end
