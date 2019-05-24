# == Schema Information
#
# Table name: billplz_collections
#
#  id            :bigint           not null, primary key
#  title         :string
#  collection_id :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Billplz::Collection < ApplicationRecord
  has_many :payments, class_name: 'Billplz::Bill'
end
