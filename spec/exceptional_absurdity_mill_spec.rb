# frozen_string_literal: true

RSpec.describe ExceptionalAbsurdityMill do
  it "has a version number" do
    expect(ExceptionalAbsurdityMill::VERSION).not_to be nil
  end

  it "produces a string" do
    expect(ExceptionalAbsurdityMill::Base::random).to be_an_instance_of(String)
  end

  describe 'creates an array of hashes' do
    let(:array_of_hashes) { ExceptionalAbsurdityMill::Base::hash_array(42,96) }
    it 'is an array' do
      expect(array_of_hashes).to be_an_instance_of(Array)
    end
    it 'elements contain a hash' do
      expect(array_of_hashes.first).to be_an_instance_of(Hash)
    end
    it 'has the correct number of rows' do
      expect(array_of_hashes.length).to eq(96)
    end
    it 'has the correct number of columns' do
      expect(array_of_hashes.first.length).to eq(42)
    end
  end
end
