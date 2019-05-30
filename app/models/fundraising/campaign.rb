# == Schema Information
#
# Table name: fundraising_campaigns
#
#  id               :bigint           not null, primary key
#  title            :string
#  slug             :string
#  mini_description :string
#  description      :text
#  user_id          :string
#  start_at         :datetime
#  end_at           :datetime
#  amount_collected :integer
#  target_amount    :integer
#  published_at     :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Fundraising::Campaign < ApplicationRecord
end
