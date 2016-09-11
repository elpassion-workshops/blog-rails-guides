class Comment < ApplicationRecord
  has_many :likes, as: :likeable
  belongs_to :article

  validates :text, presence: true
end
