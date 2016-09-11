class Article < ApplicationRecord
  has_many :likes, as: :likeable
  has_many :comments, -> { order(created_at: :desc) }, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { minimum: 8 }
  validates :text, presence: true
end
