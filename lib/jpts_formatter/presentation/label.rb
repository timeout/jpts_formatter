require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_label(xml, label)
        xml.comment! 'label'
        xml.tag!('fo:inline', {
          'font-family': 'DroidSans',
          'font-size': '9pt',
          'font-weight': 'bold'
        }) do
          Structure::Text.new(xml).format(label)
        end
      end

    end
  end
end
