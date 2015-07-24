module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_authors(xml, authors)
        xml.tag!('fo:block', {
          'font-family': 'DroidSans',
          'text-align': 'start',
          'line-height': '1.5',
          'font-weight': 'bold',
          'font-size': '10pt',
          'padding-top': '12pt'
        }) do
          authors.each_with_index do |author, index|
            if index == 0
              xml.tag!('fo:inline', {}, "#{author.given_names} #{author.surname}")
            else
              xml.tag!('fo:inline', {}, ", #{author.given_names} #{author.surname}")
            end
            xml.tag!('fo:inline', {
              'vertical-align': 'super',
              'font-size': '8pt'
            }, "#{author.refs.join(', ') if author.refs}")
          end
        end
      end

    end
  end
end
