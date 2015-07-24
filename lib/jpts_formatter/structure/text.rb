require 'jpts_formatter/structure/inline_text'

module JPTSFormatter
  module Structure
    class Text

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(text)
        text.each do |fragment|
          fragment.format(InlineText.new(self.xml))
        end
      end

    end
  end
end
