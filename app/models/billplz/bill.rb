# == Schema Information
#
# Table name: billplz_bills
#
#  id             :bigint           not null, primary key
#  payable_id     :bigint
#  payable_type   :string
#  paid_at        :datetime
#  amount         :integer
#  payment_method :string
#  payment_url    :string
#  payment_status :string
#  bill_id        :string
#  collection_id  :bigint
#  name           :string
#  email          :string           not null
#  mobile         :string           not null
#  paid_amount    :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Billplz::Bill < ApplicationRecord
end
