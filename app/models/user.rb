class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable #, :omniauthable

  enum role: [:user, :moderator, :admin]

  has_many :likes
  has_many :dislikes
end
