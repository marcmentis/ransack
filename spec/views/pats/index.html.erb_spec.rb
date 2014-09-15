require 'spec_helper'

describe "pats/index" do
  before(:each) do
    assign(:pats, [
      stub_model(Pat,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :number => 1
      ),
      stub_model(Pat,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :number => 1
      )
    ])
  end

  it "renders a list of pats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
