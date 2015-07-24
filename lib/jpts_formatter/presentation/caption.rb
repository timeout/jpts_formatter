require 'jpts_formatter/presentation'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_caption(xml, caption)
        format_caption_title(xml, caption.title) if caption.title?
        format_caption_paragraph(xml, caption.paragraph) if caption.paragraph?
      end

    end
  end
end
