require File.expand_path(File.dirname(__FILE__) + '/../spec_helper.rb')

describe "Stroke Model" do
  it 'can be created' do
    @stroke = Stroke.new
    @stroke.should_not be_nil
  end
end
