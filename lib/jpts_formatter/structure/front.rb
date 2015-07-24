require 'jpts_formatter/structure/article_meta'

module JPTSFormatter
  module Structure
    class Front

      def initialize(xml)
        @xml = xml
      end

      attr_reader :xml

      def format(front)
        front.article_meta.format(ArticleMeta.new(self.xml))
      end

    end
  end
end
