class User < ApplicationRecord
  def self.recent_posts(author)
    Text.where(author_id: author.id).limit(3).order(created_at: :asc)
  end
end
