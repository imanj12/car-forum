class Discussion < ApplicationRecord
  belongs_to :category
  has_many :posts
  has_many :users, through: :posts

  # accepts_nested_attributes_for :posts

end
