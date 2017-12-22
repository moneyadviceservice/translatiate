RSpec.describe Translatiate do
  it 'has a version number' do
    expect(Translatiate::VERSION).not_to be nil
  end

  let(:translatiate) { described_class.new }
  let(:file) { translatiate.file }
  before(:each) { translatiate.load_file('./spec/dummy/config/locales/en.yml') }

  context '#load_file' do
    context 'loads yaml file data' do
      subject { file['en']['hello']}
      it { is_expected.to eq('Hello world') }
    end
  end

  context '#get_keys' do
    subject { translatiate.get_keys(file) }
    it { is_expected.to eq(%w(en hello goodbye synonyms hi hey)) }
  end
end
