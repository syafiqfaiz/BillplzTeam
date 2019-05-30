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

require 'test_helper'

class Billplz::CollectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
