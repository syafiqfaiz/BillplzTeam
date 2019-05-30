class AddUserIdToBillplzCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :billplz_collections, :user_id, :integer
  end
end
