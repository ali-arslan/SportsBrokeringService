require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :id => "",
      :name => "MyString",
      :rating => "",
      :balance => ""
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_id[name=?]", "user[id]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_rating[name=?]", "user[rating]"
      assert_select "input#user_balance[name=?]", "user[balance]"
    end
  end
end
