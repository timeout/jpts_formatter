require 'jpts_formatter/presentation'

module JPTSFormatter
  module Structure
    class Back
      include Presentation

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(back)
        format_acknowledgement(back.acknowledge) if back.acknowledge
        format_reference_list(back.ref_list)
      end

    end
  end
end
