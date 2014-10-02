require 'spec_helper'

describe "weekly_notes/edit" do
  before(:each) do
    @weekly_note = assign(:weekly_note, stub_model(WeeklyNote,
      :danger_yn => "MyString",
      :drugs_last_changed => "MyString",
      :drugs_not_why => "MyText",
      :drugs_change_why => "MyText"
    ))
  end

  it "renders the edit weekly_note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekly_note_path(@weekly_note), "post" do
      assert_select "input#weekly_note_danger_yn[name=?]", "weekly_note[danger_yn]"
      assert_select "input#weekly_note_drugs_last_changed[name=?]", "weekly_note[drugs_last_changed]"
      assert_select "textarea#weekly_note_drugs_not_why[name=?]", "weekly_note[drugs_not_why]"
      assert_select "textarea#weekly_note_drugs_change_why[name=?]", "weekly_note[drugs_change_why]"
    end
  end
end
