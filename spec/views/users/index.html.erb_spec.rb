require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :facility => "Facility",
        :role => "Role",
        :authen_id => "Authen"
      ),
      stub_model(User,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :facility => "Facility",
        :role => "Role",
        :authen_id => "Authen"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Facility".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => "Authen".to_s, :count => 2
  end
end
