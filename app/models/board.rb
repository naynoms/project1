# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Board < ActiveRecord::Base
  belongs_to :user
  has_many :uploads
  has_and_belongs_to_many :places
end
