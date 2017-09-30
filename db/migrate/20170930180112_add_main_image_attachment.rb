class AddMainImageAttachment < ActiveRecord::Migration[5.1]
  def change
    add_attachment :donatable_organizations, :main_image
  end
end
