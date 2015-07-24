require 'dimensions'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_figure(xml, figure)
          xml.tag!('fo:block-container', {
            margin: '0pt'
          }) do
            xml.tag!('fo:block', {
              width: '100%',
              'border-style': 'solid',
              'border-width': 'normal',
              'text-align': 'right'
            }) do
              if landscape? figure
                xml.tag!('fo:external-graphic', {
                  # src: "#{figure.graphic_path}",
                  'content-width': '160mm'
                })
              else
                xml.tag!('fo:external-graphic', {
                  # src: "#{figure.graphic_path}",
                  # 'content-width': '110mm'
                })
              end
            end
          end
      end

      private
      def self.landscape? (figure)
        # graphic = figure.graphic_path
        # width = Dimensions.width graphic
        # height = Dimensions.height graphic
        # width.to_f / height > 1.6
        true
      end
    end
  end
end
