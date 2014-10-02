require 'spec_helper'

describe "weekly_notes/index" do
  before(:each) do
    assign(:weekly_notes, [
      stub_model(WeeklyNote,
        :danger_yn => "Danger Yn",
        :drugs_last_changed => "Drugs Last Changed",
        :drugs_not_why => "MyText",
        :drugs_change_why => "MyText"
      ),
      stub_model(WeeklyNote,
        :danger_yn => "Danger Yn",
        :drugs_last_changed => "Drugs Last Changed",
        :drugs_not_why => "MyText",
        :drugs_change_why => "MyText"
      )
    ])
  end

  it "renders a list of weekly_notes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Danger Yn".to_s, :count => 2
    assert_select "tr>td", :text => "Drugs Last Changed".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
