require_relative '../../../lib/analysis_helper/search_engine'

module AnalysisHelper
  describe EngineHelper do

    let(:request_data) { File.read(File.join('spec', 'fixtures', 'request_data.json')) } 

    it "should have const ENGINES" do
      expect(EngineHelper::ENGINES).to_not be_nil
    end 

    it "should know wheather is come from searche engine" do
      engine_url = "www.google.com/search?q=hello"
      site_url = "www.exapmle.com/search?q=hello"

      expect(EngineHelper.is_from_engine? engine_url).to_not be_nil
      expect(EngineHelper.is_from_engine? site_url).to be_nil
    end

    describe "grep engine name and keywords form source url" do
      context "when google" do
        it "can grep google" do 
          expect(EngineHelper.grep_engine_name "www.google.com/search?q=hello").to eq 'google'
        end

        it "can grep search keywords google" do 
          expect(EngineHelper.grep_keywords "www.google.com/search?q=google").to eq 'google'
        end
      end

      context "when baidu" do
        it "can grep baidu" do 
          expect(EngineHelper.grep_engine_name "www.baidu.com/search?wd=hello").to eq 'baidu'
        end

        it "can grep search keywords baidu" do 
          expect(EngineHelper.grep_keywords "www.baidu.com/search?wd=baidu").to eq 'baidu'
        end 
      end
    end
  end
end
