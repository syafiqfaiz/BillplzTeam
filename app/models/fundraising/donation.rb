# == Schema Information
#
# Table name: fundraising_donations
#
#  id          :bigint           not null, primary key
#  campaign_id :integer
#  amount      :integer
#  contact_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Fundraising::Donation < ApplicationRecord
  belongs_to :contact
  has_one :payment, as: :payable, class_name: 'Billplz::Bill'
end
