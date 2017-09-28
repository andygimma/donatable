require 'spec_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      :name => "MyString",
      :website => "MyString",
      :twitter => "MyString",
      :facebook => "MyString",
      :phone => "MyString",
      :city => "MyString",
      :state_or_district => "MyString",
      :country => "MyString",
      :banner_url => "MyString",
      :logo_url => "MyString",
      :short_description => "MyString",
      :long_description => "MyText"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[name]"

      assert_select "input[name=?]", "organization[website]"

      assert_select "input[name=?]", "organization[twitter]"

      assert_select "input[name=?]", "organization[facebook]"

      assert_select "input[name=?]", "organization[phone]"

      assert_select "input[name=?]", "organization[city]"

      assert_select "input[name=?]", "organization[state_or_district]"

      assert_select "input[name=?]", "organization[country]"

      assert_select "input[name=?]", "organization[banner_url]"

      assert_select "input[name=?]", "organization[logo_url]"

      assert_select "input[name=?]", "organization[short_description]"

      assert_select "textarea[name=?]", "organization[long_description]"
    end
  end
end
