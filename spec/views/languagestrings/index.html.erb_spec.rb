require 'spec_helper'

describe "languagestrings/index" do
  before(:each) do
    assign(:languagestrings, [
      stub_model(Languagestring),
      stub_model(Languagestring)
    ])
  end

  it "renders a list of languagestrings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
