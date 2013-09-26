require_relative '../../../lib/analysis_helper/search_engine'

describe AnalysisHelper::SearchEngine do

  let(:request_data) { File.read(File.join('spec', 'fixtures', 'request_data.json')) } 
  let(:engine) { AnalysisHelper::SearchEngine.new request_data }

  it "should have const ENGINES" do
    expect(AnalysisHelper::ENGINES).to_not be_nil
  end

  it "can grep search keywords from the source url" do 
    expect(engine.keywords).to eq 'whst.gov.cn'
  end

  it "can grep engine name from the source url" do 
    expect(engine.engine_name).to eq 'google'
  end
end
