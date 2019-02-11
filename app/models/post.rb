# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#

class Post < ApplicationRecord
  belongs_to :user
  
  default_scope -> { order(created_at: :desc) }
  # 新しい順に並べる
end
