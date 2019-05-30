class CreateFundraisingCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :fundraising_campaigns do |t|
      t.string :title
      t.string :slug
      t.string :mini_description
      t.text :description
      t.string :user_id
      t.datetime :start_at
      t.datetime :end_at
      t.integer :amount_collected
      t.integer :target_amount
      t.datetime :published_at

      t.timestamps
    end
    add_index :fundraising_campaigns, :slug
  end
end
