require 'spec_helper'

describe "weekly_notes/show" do
  before(:each) do
    @weekly_note = assign(:weekly_note, stub_model(WeeklyNote,
      :danger_yn => "Danger Yn",
      :drugs_last_changed => "Drugs Last Changed",
      :drugs_not_why => "MyText",
      :drugs_change_why => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Danger Yn/)
    rendered.should match(/Drugs Last Changed/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
