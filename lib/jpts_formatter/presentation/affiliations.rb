module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_affiliations(xml, article_meta)
        xml.tag!('fo:block', {
          'font-family': 'DroidSans',
          'text-align': 'justify',
          'font-size': '8pt',
          'padding-top': '6pt',
          'padding-bottom': '6pt'
        }) do
          article_meta.each_affiliation do |affiliation|
            xml.tag!('fo:inline', {
              'font-weight': 'bold'
            }, "#{affiliation.label}")
            xml.tag!('fo:inline', {}, "#{affiliation.addr}")
          end
        end
      end

    end
  end
end
