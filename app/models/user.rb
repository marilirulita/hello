class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.recent_posts(author)
    Text.where(author_id: author.id).limit(3).order(created_at: :asc)
  end
end
