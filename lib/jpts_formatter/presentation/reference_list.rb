require 'jpts_formatter/presentation'

module JPTSFormatter
  module Presentation
    module DocumentElements
      include Presentation

      def self.format_reference_list(xml, reference_list)
        xml.tag!('fo:block', {
          'margin-top': '10pt',
          'font-size': '10pt',
          'font-weight': 'bold'
        }) do
          xml.tag!('fo:inline', {}, 'References')
        end
        xml.tag!('fo:block', {
          'margin-top': '8pt',
          'text-align': 'justify', 
          'font-size': '8pt',
          'font-family': 'serif'
        }) do
          xml.tag!('fo:list-block', {
            'provisional-distance-between-starts':'6mm', 
            'end-indent': '12mm', 
            'start-indent': '12mm'
          }) do
            reference_list.each_with_index do |reference, index|
              xml.tag!('fo:list-item') do
                xml.tag!('fo:list-item-label', {
                  'end-indent': 'label-end()'
                }) do
                  xml.tag!('fo:block') do
                    xml.tag!('fo:inline', {}, "#{index + 1}. ")
                  end
                end
                xml.tag!('fo:list-item-body', {
                  'start-indent': 'body-start()'
                }) do
                  xml.tag!('fo:block') do
                    format_reference(xml, reference)
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
