# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  body        :text
#  likes_count :integer
#  name        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
