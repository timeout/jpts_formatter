require 'jpts_formatter/presentation'
require 'jpts_formatter/structure/section'

module JPTSFormatter
  module Presentation
    module DocumentElements
      include Presentation

      def self.format_abstract(xml, abstract)
        xml.tag!('fo:block', {
          'background-color': '#DEDEDE',
          margin: '6pt',
          padding: '8pt'
        }) do
          xml.tag!('fo:block', {
            'font-family': 'DroidSans',
            'font-weight': 'bold',
            'font-size': '12pt'
          }, 'Abstract')

          if abstract.title?
            format_abstract_title(xml, abstract.title)
          end

          if abstract.paragraph?
            format_paragraph(xml, abstract.paragraph)
          end

          abstract.sections.each do |section|
            Structure::Section.new(xml).format(section)
          end if abstract.sections?
        end

      end
    end
  end
end
