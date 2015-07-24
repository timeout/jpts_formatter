module JPTSFormatter
  module Structure

    class InlineText
      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(inline_text)
        self.xml.tag!('fo:inline', inline_text.styles, inline_text.text)
      end

    end
  end
end
