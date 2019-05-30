# == Schema Information
#
# Table name: billplz_collections
#
#  id             :bigint           not null, primary key
#  title          :string
#  collection_id  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  logo_url       :string
#  thumb_logo_url :string
#  user_id        :integer
#

class Billplz::Collection < ApplicationRecord
  attr_accessor :image
  has_many :payments, class_name: 'Billplz::Bill'
  belongs_to :user
end
