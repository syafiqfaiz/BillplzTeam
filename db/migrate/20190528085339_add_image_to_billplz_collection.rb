class AddImageToBillplzCollection < ActiveRecord::Migration[5.2]
  def change
    add_column :billplz_collections, :logo_url, :string
    add_column :billplz_collections, :thumb_logo_url, :string
  end
end
