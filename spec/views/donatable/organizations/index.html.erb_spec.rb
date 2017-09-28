# require 'spec_helper'
#
# RSpec.describe "donatable/organizations/index", type: :view do
#   before(:each) do
#     assign(:organizations, [
#       Donatable::Organization.create!(
#         :name => "Name",
#         :website => "Website",
#         :twitter => "Twitter",
#         :facebook => "Facebook",
#         :phone => "Phone",
#         :city => "City",
#         :state_or_district => "State Or District",
#         :country => "Country",
#         :banner_url => "Banner Url",
#         :logo_url => "Logo Url",
#         :short_description => "Short Description",
#         :long_description => "MyText"
#       ),
#       Donatable::Organization.create!(
#         :name => "Name",
#         :website => "Website",
#         :twitter => "Twitter",
#         :facebook => "Facebook",
#         :phone => "Phone",
#         :city => "City",
#         :state_or_district => "State Or District",
#         :country => "Country",
#         :banner_url => "Banner Url",
#         :logo_url => "Logo Url",
#         :short_description => "Short Description",
#         :long_description => "MyText"
#       )
#     ])
#   end
#
#   it "renders a list of organizations" do
#     render
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Website".to_s, :count => 2
#     assert_select "tr>td", :text => "Twitter".to_s, :count => 2
#     assert_select "tr>td", :text => "Facebook".to_s, :count => 2
#     assert_select "tr>td", :text => "Phone".to_s, :count => 2
#     assert_select "tr>td", :text => "City".to_s, :count => 2
#     assert_select "tr>td", :text => "State Or District".to_s, :count => 2
#     assert_select "tr>td", :text => "Country".to_s, :count => 2
#     assert_select "tr>td", :text => "Banner Url".to_s, :count => 2
#     assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
#     assert_select "tr>td", :text => "Short Description".to_s, :count => 2
#     assert_select "tr>td", :text => "MyText".to_s, :count => 2
#   end
# end
