class AddUserIdToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :donatable_organizations, :user_id, :integer
  end
end
