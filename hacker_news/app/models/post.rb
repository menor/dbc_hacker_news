class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_many :post_votes
  has_many :users, through: :post_votes
end
