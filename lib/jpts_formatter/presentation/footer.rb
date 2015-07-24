module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_footer(xml)
        xml.tag!('fo:static-content', {
          'flow-name': 'xsl-region-after'
        }) do

          DocumentElements.horizontal_rule(xml, 2)

          xml.tag!('fo:table', {
            'table-layout': 'fixed',
            width: '100%',
            'font-size': '9pt'
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
                  }, 'something')   # TODO:
                end
                xml.tag!('fo:table-cell', {
                  'display-align': 'after'
                }) do
                  xml.tag!('fo:block', {
                    'text-align': 'right'
                  }, 'or_other')    # TODO:
                end
              end
            end
          end
        end
      end

    end
  end
end

