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

class Board < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :board_tag_relations, dependent: :delete_all
  has_many :tags, through: :board_tag_relations
 # belongs_to :user
 # has_many :likes, dependent: :destroy
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
  
  #def like_user(user_id)
   # likes.find_by(user_id: user_id)
  #end 
end
