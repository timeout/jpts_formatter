require 'jpts_formatter/document'
require 'jpts_formatter/presentation'

require 'jpts_formatter/structure/front'
require 'jpts_formatter/structure/body'
require 'jpts_formatter/structure/back'

require 'builder'

module JPTSFormatter
  class Article
    include Presentation

    def initialize
      @xml = Builder::XmlMarkup.new(indent: 2)
      self.xml.instruct!
    end

    attr_reader :xml

    def format(article)
      self.xml.tag!('fo:root', {'xmlns:fo': 'http://www.w3.org/1999/XSL/Format'}) do

        format_layout_master

        self.xml.comment! 'pagination specification'
        self.xml.tag!('fo:page-sequence', {
          'master-reference': Presentation.job_name,
          'xml:lang': 'en'
        }) do
          self.xml.comment! 'document title'
          self.xml.tag!('fo:title', {}, document_title(article))

          format_header

          format_footer

          self.xml.tag!('fo:flow', {
            'flow-name': 'xsl-region-body'
          }) do
            self.xml.comment! 'content'
            self.xml.comment! 'front'
            article.front.format(Structure::Front.new(self.xml))

            self.xml.comment! 'body'
            article.body.format(Structure::Body.new(self.xml))
            
            self.xml.comment! 'back'
            article.back.format(Structure::Back.new(self.xml))
            
          end
        end
      end
    end

    private

    def document_title(article)
      article.front.journal_meta.journal_title
    end
  end
end
