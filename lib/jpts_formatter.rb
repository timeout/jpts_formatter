require 'jpts_formatter/version'
require 'jpts_formatter/article'
require 'jpts_formatter/document'
require 'jpts_formatter/default_document'
require 'jpts_formatter/errors'
require 'jpts_formatter/graphics_dir'
require 'jpts_formatter/logo_path'

require 'jpts_extractor'

module JPTSFormatter
  def self.format(io, graphics_dir = nil, logo_path = 'logo/plos_one.jpg')
    JPTSFormatter.graphics_dir_path = graphics_dir
    JPTSFormatter.logo_path = logo_path

    article = JPTSExtractor.extract(io)

    output = nil
    JPTSFormatter::Document.repository.each do |document|
      JPTSFormatter::Presentation.document = document.new
      formatter = JPTSFormatter::Article.new
      article.format(formatter)
      output = formatter.xml.target!
    end

    output
  end
end

require 'pathname'

