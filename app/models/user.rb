class User < ApplicationRecord
  has_many :posts
  has_many :discussions, through: :posts
end
