# == Schema Information
#
# Table name: users
#
#  id                    :integer          not null, primary key
#  first_name            :text
#  second_name           :text
#  email                 :text
#  password              :text
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  password_confirmation :text
#  password_digest       :string
#

class User < ActiveRecord::Base
  has_many :boards
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}
end
