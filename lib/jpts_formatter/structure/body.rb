require 'jpts_formatter/structure/section'

module JPTSFormatter
  module Structure
    class Body

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(body)
        body.each do |section|
          Structure::Section.new(self.xml).format(section)
        end
      end

    end
  end
end
