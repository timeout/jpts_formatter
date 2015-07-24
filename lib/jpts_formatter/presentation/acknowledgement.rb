require 'jpts_formatter/structure/section'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_acknowledgement(xml, acknowledgement)
        xml.comment! 'acknowlegements'
        xml.tag!('fo:block', {
            'padding-top': '9pt'
        }) do
          xml.tag!('fo:inline', {
            'font-family': 'DroidSans',
            'font-size': '10pt',
            'font-weight': 'bold',
          }, 'Acknowlegements')

          if acknowledgement.label?
            # label_formatter(acknowledge.title)
          end

          if acknowledgement.title?
            # title_formatter(acknowledgement.title)
          end

          if acknowledgement.paragraph?
            # paragraph_formatter(acknowledgement.paragraph)
          end

          acknowledgement.sections.each do |section|
            section.format(Structure::Section.new(xml))
          end if acknowledgement.sections?
        end
      end

    end
  end
end
