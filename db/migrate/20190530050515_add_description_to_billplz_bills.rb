class AddDescriptionToBillplzBills < ActiveRecord::Migration[5.2]
  def change
    add_column :billplz_bills, :description, :text
    remove_column :billplz_bills, :mobile
  end
end
