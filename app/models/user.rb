# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :text
#  second_name     :text
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean
#

class User < ActiveRecord::Base
  has_many :boards
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}
end
