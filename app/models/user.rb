class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, dependent: :destroy

  def owns?(resource)
    resource.user_id == id
  end
end
