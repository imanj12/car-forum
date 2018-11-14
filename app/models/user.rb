class User < ApplicationRecord
  has_many :posts
  has_many :discussions, through: :posts
  validates :username, uniqueness: true
  has_secure_password

  def recent_five_posts
    self.posts.last(5).reverse
  end

end
