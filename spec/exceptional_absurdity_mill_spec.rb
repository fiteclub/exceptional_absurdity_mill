# frozen_string_literal: true

RSpec.describe ExceptionalAbsurdityMill do
  it "has a version number" do
    expect(ExceptionalAbsurdityMill::VERSION).not_to be nil
  end

  it "produces a string" do
    expect(ExceptionalAbsurdityMill::Base::random).to be_an_instance_of(String)
  end

  it "creates an array of hashes" do
    expect(ExceptionalAbsurdityMill::Base::hash_array(1,1)).to be_an_instance_of(Array)
  end
end
