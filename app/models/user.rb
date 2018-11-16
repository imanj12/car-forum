class User < ApplicationRecord
  has_many :posts
  has_many :discussions, through: :posts
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :password, length: { minimum: 8 }, allow_nil: false
  has_secure_password

  def recent_five_posts
    self.posts.last(5).reverse
  end

end
