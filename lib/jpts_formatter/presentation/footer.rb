module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_footer(xml, published_date)
        xml.tag!('fo:static-content', {
          'flow-name': 'xsl-region-after'
        }) do

          DocumentElements.horizontal_rule(xml, 2)

          xml.tag!('fo:table', {
            'table-layout': 'fixed',
            width: '100%',
            'font-size': '8pt'
          }) do
            xml.tag!('fo:table-column', {
              'column-number': '1',
              'column-width': 'proportional-column-width(1)'
            })
            xml.tag!('fo:table-column', {
              'column-number': '2',
              'column-width': 'proportional-column-width(1)'
            })
            xml.tag!('fo:table-body') do
              xml.tag!('fo:table-row', {
                'font-size': '9pt',
                'height': '16pt',
                'padding-bottom': '3pt'
              }) do
                xml.tag!('fo:table-cell', {
                  'display-align': 'after'
                }) do
                  xml.tag!('fo:block', {
                    'text-align': 'left'
                  }, published_date.strftime("%B %e, %Y"))
                end
                xml.tag!('fo:table-cell', {
                  'display-align': 'after'
                }) do
                  xml.tag!('fo:block', {
                    'text-align': 'right'
                  })  do
                    xml.tag!('fo:page-number') 
                    xml.text!('/') 
                    xml.tag!('fo:page-number-citation', {
                      'ref-id': 'the_last_page'
                    })
                  end
                end
              end
            end
          end
        end
      end

    end
  end
end

