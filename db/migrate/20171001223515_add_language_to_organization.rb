class AddLanguageToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :donatable_organizations, :language, :string
  end
end
