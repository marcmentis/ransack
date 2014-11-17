require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :email => "Email",
      :facility => "Facility",
      :role => "Role",
      :authen_id => "Authen"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Email/)
    rendered.should match(/Facility/)
    rendered.should match(/Role/)
    rendered.should match(/Authen/)
  end
end
