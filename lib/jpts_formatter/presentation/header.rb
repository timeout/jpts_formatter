require 'jpts_formatter/presentation/page_configuration'
require 'jpts_formatter/logo_path'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_header(xml, alt_title)
        xml.tag!('fo:static-content', {
          'flow-name': 'xsl-region-before'
        }) do
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
                  xml.tag!('fo:block') do
                    xml.tag!('fo:external-graphic', {
                      src: "#{JPTSFormatter.logo_path}",
                      'content-height': Presentation.header_extent
                    })
                  end
                end
                xml.tag!('fo:table-cell', {
                  'display-align': 'after'
                }) do
                  xml.tag!('fo:block', {
                    'text-align': 'right'
                  }) do 
                    Structure::Text.new(xml).format(alt_title)
                  end
                end
              end
            end
          end

          DocumentElements.horizontal_rule(xml, 2)

        end
      end

    end
  end
end

