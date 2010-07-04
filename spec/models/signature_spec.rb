require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')

describe "Signature Model" do
  it 'can be created' do
    @signature = Signature.new
    @signature.should_not be_nil
  end
end
