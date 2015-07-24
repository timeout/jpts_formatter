module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_reference(xml, reference)
        if reference.author_names?
          xml.tag!('fo:inline', {}, 
                   "#{reference.author_names.map { |name| name.to_s }.join(', ') }")
        end
        xml.tag!('fo:inline', {}, "(#{reference.year})") if reference.year?
        if reference.article_title?
          xml.tag!('fo:inline', {}, "#{reference.article_title}") 
        end
        xml.tag!('fo:inline', {}, "#{reference.source}") if reference.source?
        xml.tag!('fo:inline', {}, "#{reference.issue}") if reference.issue?
        xml.tag!('fo:inline', {}, "#{reference.volume}:") if reference.volume?
        if reference.fpage? and reference.lpage?
          xml.tag!('fo:inline', {}, "#{reference.fpage}-#{reference.lpage}") 
        end
      end

    end
  end
end
