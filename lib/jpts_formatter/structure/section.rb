require 'jpts_formatter/presentation'
require 'jpts_formatter/structure/table_wrap'
require 'jpts_formatter/structure/figure'

module JPTSFormatter
  module Structure
    class Section
      include Presentation

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(section)
        if section.title?
          format_section_title(section.title)
        end

        section.each do |subsection|
          case subsection
          when JPTSExtractor::ArticlePart::Section
            subsection.format(self)
          when JPTSExtractor::ArticlePart::Text
            format_paragraph(subsection)
          when JPTSExtractor::ArticlePart::TableWrap
            Structure::TableWrap.new(self.xml).format(subsection)
          when JPTSExtractor::ArticlePart::Figure
            Structure::Figure.new(self.xml).format(subsection)
          else
            #TODO:
          end
        end
      end
    end
  end
end
