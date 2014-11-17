require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :facility => "MyString",
      :role => "MyString",
      :authen_id => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_firstname[name=?]", "user[firstname]"
      assert_select "input#user_lastname[name=?]", "user[lastname]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_facility[name=?]", "user[facility]"
      assert_select "input#user_role[name=?]", "user[role]"
      assert_select "input#user_authen_id[name=?]", "user[authen_id]"
    end
  end
end
