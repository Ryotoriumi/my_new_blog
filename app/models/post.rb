class Post < ActiveRecord::Base

  has_many :comments
  belongs_to :author

  validates :name, presence: true, length: {maximum: 20}
  validates :title, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
