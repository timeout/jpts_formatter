require 'jpts_formatter/structure/text'

module JPTSFormatter
  module Presentation
    module DocumentElements

      def self.format_reference(xml, reference)
        if reference.author_names?
          xml.tag!('fo:inline', {}, 
                   "#{reference.author_names.map { |name| name.to_s }.join(', ') }")
        end
        xml.tag!('fo:inline', {}, "#{reference.chapter_title}") if reference.chapter_title?
        xml.tag!('fo:inline', {}, "#{reference.publisher_loc}:") if reference.publisher_loc?
        xml.tag!('fo:inline', {}, "#{reference.publisher_name}") if reference.publisher_name?
        xml.tag!('fo:inline', {}, "(#{reference.year})") if reference.year?
        if reference.article_title?
          xml.tag!('fo:inline', {}, "#{reference.article_title}") 
        end
        xml.tag!('fo:inline') do
          Structure::Text.new(xml).format(reference.source)
        end if reference.source?
        xml.tag!('fo:inline', {}, "#{reference.issue}") if reference.issue?
        xml.tag!('fo:inline', {}, "#{reference.volume}:") if reference.volume?
        if reference.fpage? and reference.lpage?
          xml.tag!('fo:inline', {}, "#{reference.fpage}-#{reference.lpage}") 
        end
      end

    end
  end
end
