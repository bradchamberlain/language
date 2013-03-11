require 'spec_helper'

describe "languagestrings/new" do
  before(:each) do
    assign(:languagestring, stub_model(Languagestring).as_new_record)
  end

  it "renders new languagestring form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => languagestrings_path, :method => "post" do
    end
  end
end
