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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
