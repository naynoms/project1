# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :text
#  country    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#

class Place < ActiveRecord::Base
  has_and_belongs_to_many :boards
  has_many :uploads

  def location
    "#{name} #{country}"
  end

  geocoded_by :location
  after_validation :geocode

end
