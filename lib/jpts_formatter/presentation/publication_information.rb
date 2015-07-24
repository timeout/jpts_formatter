require 'jpts_formatter/presentation'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_publication_information(xml, article_meta)
        xml.tag!('fo:block', {
          padding: '4pt'
        }) do
          xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, 'Received: ') 
          xml.tag!('fo:inline', {}, 
                   "#{format_date(article_meta.received_date)}; ")
          xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, 'Accepted: ')
          xml.tag!('fo:inline', {}, 
                   "#{format_date(article_meta.accepted_date)}; ")
          xml.tag!('fo:inline', {
            'font-weight': 'bold'
          }, 'Published: ')
          xml.tag!('fo:inline', {}, 
                   "#{format_date(article_meta.published_date)}")
        end
      end

    end
  end
end
