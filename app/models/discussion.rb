class Discussion < ApplicationRecord
  belongs_to :category
  has_many :posts
  has_many :users, through: :posts
  acts_as_punchable

  # last post
  def last_post
    if self.posts.length > 0
      self.posts.last.updated_at.localtime.strftime('%H:%M:%S - %m/%d/%Y')
    else
      "Thread is empty!"
    end
  end

  # count total number of posts in discussion/thread
  def total_posts
    self.posts.count
  end

  # count all unique users who have posted in thread (although this is already unique?)
  def total_users
    self.users.uniq.count
  end

  # display page views of certain discussion/thread (using gem punching_bag)
  def page_views
    self.hits
  end

  # average time between posts...measures user engagement
  def avg_tm_btwn_posts
    if self.posts.length == 0
      "No posts!"
    elsif self.posts.length == 1
      "Only one post!"
    else
      updated_at_times = self.posts.each_with_object([]) do |post, arr|
        arr << post.updated_at
      end

      differences = [] # can do this using each_with_object.with_index
      updated_at_times.each_with_index do |time, i|
        if i < updated_at_times.length - 1
          differences << updated_at_times[i + 1] - time
        end
      end

      avg_time = differences.inject(:+) / differences.length
      avg_time.to_i
    end
  end

  # average post length
  def avg_post_length
    if self.posts.length > 0
      post_lengths = self.posts.each_with_object([]) do |post, arr|
        arr << post.content.length
      end

      avg_length = post_lengths.inject(:+) / post_lengths.length
      avg_length.to_i
    else
      'No posts!'
    end
  end

end
