require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_table_cell(xml, cell, column)
        xml.tag!('fo:table-cell', {
          'column-number': "#{column}",
          'number-rows-spanned': "#{cell.styles[:rowspan]}",
          'number-columns-spanned': "#{cell.styles[:colspan]}"
        }) do
          xml.tag!('fo:block', {
            'text-align': "#{cell.styles[:align]}"
          }) do
            Structure::Text.new(xml).format(cell.text)
          end 
        end if cell.text?
      end

    end
  end
end
