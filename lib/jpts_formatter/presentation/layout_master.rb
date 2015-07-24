require 'jpts_formatter/presentation/page_configuration'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_layout_master(xml)
        xml.comment! 'layout master'
        xml.tag!('fo:layout-master-set') do
          xml.comment! 'definition of physical page'
          xml.tag!('fo:simple-page-master', {
            'master-name': Presentation.job_name,
            'page-height': Presentation.page_height,
            'page-width': Presentation.page_width,
            'margin-top': Presentation.margin_top,
            'margin-bottom': Presentation.margin_bottom,
            'margin-left': Presentation.margin_left,
            'margin-right': Presentation.margin_right
          }) do
            xml.comment! 'definition of printable areas'
            xml.comment! 'body dimensions'
            xml.tag!('fo:region-body', {
              'margin-top': Presentation.body_margin_top,
              'margin-bottom': Presentation.body_margin_bottom,
            })
            xml.comment! 'header dimensions (height)'
            xml.tag!('fo:region-before', {
              extent: Presentation.header_extent,
              precedence: Presentation.header_precedence
            })
            xml.comment! 'footer dimensions (height)'
            xml.tag!('fo:region-after', {
              extent: Presentation.footer_extent,
              precedence: Presentation.footer_precedence
            })
          end
        end
      end

    end
  end
end
