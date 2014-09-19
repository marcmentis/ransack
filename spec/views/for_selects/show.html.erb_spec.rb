require 'spec_helper'

describe "for_selects/show" do
  before(:each) do
    @for_select = assign(:for_select, stub_model(ForSelect,
      :code => "Code",
      :value => "Value",
      :text => "Text",
      :option_order => "Option Order",
      :grouper => "Grouper"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    rendered.should match(/Value/)
    rendered.should match(/Text/)
    rendered.should match(/Option Order/)
    rendered.should match(/Grouper/)
  end
end
