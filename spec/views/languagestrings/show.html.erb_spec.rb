require 'spec_helper'

describe "languagestrings/show" do
  before(:each) do
    @languagestring = assign(:languagestring, stub_model(Languagestring))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
