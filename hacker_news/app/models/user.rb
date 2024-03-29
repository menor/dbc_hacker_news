class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  has_many :post_votes
  has_many :posts, through: :post_votes

  has_many :comment_votes
  has_many :comments, through: :comment_votes
end
