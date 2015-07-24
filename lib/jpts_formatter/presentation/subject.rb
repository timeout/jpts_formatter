module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_subject(xml, subject)
        xml.tag!('fo:block', {
          'font-family': 'DroidSans',
          'font-size': '8pt',
          'padding-top': '18pt'
        }, DocumentElements.upcase_subject(subject))
      end

      private
      def self.upcase_subject(subject)
        subject.upcase
      end
    end
  end
end
