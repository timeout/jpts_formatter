module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.horizontal_rule(xml, thickness)
        xml.comment! 'horizontal rule'
        xml.tag!('fo:block', {
          'line-height': "#{thickness}pt",
          margin: '0pt'
        }) do
          xml.tag!('fo:leader', {
            'leader-pattern': 'rule',
            'leader-length.optimum': '100%',
            color: 'gray',
            'rule-thickness': "#{thickness}pt"
          })
        end
      end
    end
  end
end
