require 'spec_helper'

describe "pats/show" do
  before(:each) do
    @pat = assign(:pat, stub_model(Pat,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :number => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/1/)
  end
end
