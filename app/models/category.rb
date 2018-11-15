class Category < ApplicationRecord
  has_many :discussions

  def total_threads
    self.discussions.count
  end

  def total_posts
    total_posts = []
    self.discussions.each do |disc|
      total_posts << disc.posts.length
    end
    total_posts.inject(:+)
  end

  # def last_post
  #   self.discussions.last
  # end

end
