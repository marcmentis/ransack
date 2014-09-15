require 'spec_helper'

describe "pats/new" do
  before(:each) do
    assign(:pat, stub_model(Pat,
      :firstname => "MyString",
      :lastname => "MyString",
      :number => 1
    ).as_new_record)
  end

  it "renders new pat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pats_path, "post" do
      assert_select "input#pat_firstname[name=?]", "pat[firstname]"
      assert_select "input#pat_lastname[name=?]", "pat[lastname]"
      assert_select "input#pat_number[name=?]", "pat[number]"
    end
  end
end
