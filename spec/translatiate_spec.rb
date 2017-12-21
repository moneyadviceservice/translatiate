RSpec.describe Translatiate do
  it 'has a version number' do
    expect(Translatiate::VERSION).not_to be nil
  end



  context '#load_file' do
    subject { described_class.new.load_file('./spec/dummy/config/locales/en.yml') }
    it 'loads yaml file data' do
      is_expected.to eq({"en"=>{"hello"=>"Hello world"}})
    end
  end
end
