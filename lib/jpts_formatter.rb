require 'jpts_formatter/version'
require 'jpts_formatter/article'
require 'jpts_formatter/document'
require 'jpts_formatter/default_document'

require 'jpts_extractor'

module JPTSFormatter
  def self.format(io)
    article = JPTSExtractor.extract(io)

    output = String.new
    JPTSFormatter::Document.repository.each do |document|
      JPTSFormatter::Presentation.document = document.new
      formatter = JPTSFormatter::Article.new
      article.format(formatter)
      output = formatter.xml.target!
    end

    output
  end
end

# paths = Array.new
# paths << Pathname.new('/home/joe/documents/corpora/0123867/tei/0123867.xml')
# paths << Pathname.new('/home/joe/documents/corpora/0128337/tei/0128337.xml')
# paths << Pathname.new('/home/joe/documents/corpora/0128875/tei/0128875.xml')
# paths << Pathname.new('/home/joe/documents/corpora/0125164/tei/0125164.xml')
# paths.each do |path|
#   puts "formatting article: #{path.basename}"
#   JPTSFormatter.format(path)
# end
