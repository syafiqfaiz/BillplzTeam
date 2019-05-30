# == Schema Information
#
# Table name: images
#
#  id             :bigint           not null, primary key
#  image          :string
#  imageable_type :string
#  imageable_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Image < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :imageable, polymorphic: true, optional: true
end
