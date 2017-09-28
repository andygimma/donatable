require 'spec_helper'

RSpec.describe "organizations/show", type: :view do
  before(:each) do
    @organization = assign(:organization, Donatable::Organization.create!(
      :name => "Name",
      :website => "Website",
      :twitter => "Twitter",
      :facebook => "Facebook",
      :phone => "Phone",
      :city => "City",
      :state_or_district => "State Or District",
      :country => "Country",
      :banner_url => "Banner Url",
      :logo_url => "Logo Url",
      :short_description => "Short Description",
      :long_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State Or District/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Banner Url/)
    expect(rendered).to match(/Logo Url/)
    expect(rendered).to match(/Short Description/)
    expect(rendered).to match(/MyText/)
  end
end
