class Category < ApplicationRecord
  has_many :discussions

  # total number of discussions
  def total_threads
    self.discussions.count
  end
end
