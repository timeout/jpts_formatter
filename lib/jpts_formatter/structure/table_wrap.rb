require 'jpts_formatter/presentation'

module JPTSFormatter
  module Structure
    class TableWrap
      include Presentation

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(table_wrap)
        self.xml.tag!('fo:block', {
          'padding-left': '9pt',
          'border-left-style': 'solid',
          'border-width': '1.5pt'
        }) do
          self.xml.tag!('fo:block', {
            'padding-top': '6pt',
            'padding-bottom': '6pt',
            'font-size': '9pt',
          }) do
            format_label(table_wrap.label)

            format_caption(table_wrap.caption)
          end

          format_table(table_wrap.table)
        end
      end

    end
  end
end
