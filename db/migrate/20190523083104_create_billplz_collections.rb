class CreateBillplzCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :billplz_collections do |t|
      t.string :title
      t.string :collection_id

      t.timestamps
    end
    add_index :billplz_collections, :collection_id
  end
end
