# == Schema Information
#
# Table name: voqtes
#
#  id          :integer          not null, primary key
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class VoqteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
