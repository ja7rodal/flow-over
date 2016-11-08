# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Question < ApplicationRecord
  belongs_to :user
  has_many :comments

  has_many :voqtes
  has_many :answers

  def voqted_by?(user)
    voqtes.exists?(user: user)
  end

  validates :title, presence: true
  validates :description, presence: true

end
