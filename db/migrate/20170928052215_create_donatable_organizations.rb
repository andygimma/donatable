class CreateDonatableOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :donatable_organizations do |t|
      t.string :name, null: false
      t.string :email
      t.string :youtube_url
      t.string :website, null: false
      t.string :twitter
      t.string :facebook
      t.string :phone
      t.string :city
      t.string :state_or_district
      t.string :country
      t.string :banner_url
      t.string :logo_url
      t.string :short_description, null: false
      t.text :long_description, null: false

      t.timestamps
    end
  end
end
