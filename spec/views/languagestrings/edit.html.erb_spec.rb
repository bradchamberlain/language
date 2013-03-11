require 'spec_helper'

describe "languagestrings/edit" do
  before(:each) do
    @languagestring = assign(:languagestring, stub_model(Languagestring))
  end

  it "renders the edit languagestring form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => languagestrings_path(@languagestring), :method => "post" do
    end
  end
end
