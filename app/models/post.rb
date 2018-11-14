class Post < ApplicationRecord
  belongs_to :user
  belongs_to :discussion


  def read_time
    self.content.reading_time
  end
end
