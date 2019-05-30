# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  name                   :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  locked_at              :datetime
#

class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,# :registerable,
         :recoverable, :rememberable, :validatable#, :confirmable
  has_many :collections, class_name: 'Billplz::Collection'

  AUTHORIZATION_ROLES = ['admin', 'committee']

  def sync_role(role = nil)
    AUTHORIZATION_ROLES.each{|role| self.remove_role role.to_sym}
    add_role role.to_sym if role.present?
  end
end
