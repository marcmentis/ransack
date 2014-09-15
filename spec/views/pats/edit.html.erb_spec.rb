require 'spec_helper'

describe "pats/edit" do
  before(:each) do
    @pat = assign(:pat, stub_model(Pat,
      :firstname => "MyString",
      :lastname => "MyString",
      :number => 1
    ))
  end

  it "renders the edit pat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pat_path(@pat), "post" do
      assert_select "input#pat_firstname[name=?]", "pat[firstname]"
      assert_select "input#pat_lastname[name=?]", "pat[lastname]"
      assert_select "input#pat_number[name=?]", "pat[number]"
    end
  end
end
