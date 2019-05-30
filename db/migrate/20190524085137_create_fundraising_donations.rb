class CreateFundraisingDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :fundraising_donations do |t|
      t.integer :campaign_id
      t.integer :amount
      t.integer :contact_id

      t.timestamps
    end
  end
end
