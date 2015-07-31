require 'jpts_formatter'
require 'pathname'

RSpec.describe JPTSFormatter do
  describe 'format' do
    it 'formats a simple document' do
      fixture_path = Pathname.new 'spec/fixture/0123221.xml'
      xsl_fo =JPTSFormatter.format fixture_path.open
      File.open('spec/fixture/0123221.fo', 'w') { |f| f.write xsl_fo }
      system '/home/joe/programming/xml/xsl/fop-1.1/fop -c fop.xconf spec/fixture/0123221.fo spec/fixture/0123221.pdf'
      expect($?.exitstatus).to eq(0)
    end
  end
end
