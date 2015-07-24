module JPTSFormatter
  module Plugin
    module ClassMethods

      def repository
        @repository ||= Array.new
      end

      def inherited(klass)
        self.repository << klass
      end
    end

    def self.included(klass)
      klass.extend ClassMethods
    end

  end
end
