# == Schema Information
#
# Table name: uploads
#
#  id          :integer          not null, primary key
#  image       :text
#  information :text
#  board_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  place_id    :integer
#

require 'test_helper'

class UploadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
