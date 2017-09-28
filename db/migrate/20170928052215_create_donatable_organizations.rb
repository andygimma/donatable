class CreateDonatableOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :donatable_organizations do |t|
      t.string :name
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :phone
      t.string :city
      t.string :state_or_district
      t.string :country
      t.string :banner_url
      t.string :logo_url
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
