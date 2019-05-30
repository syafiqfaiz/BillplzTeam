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

require 'test_helper'

class Fundraising::DonationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
