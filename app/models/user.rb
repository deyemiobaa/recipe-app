class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :recipes, dependent: :destroy
  has_many :foods, dependent: :destroy

  validates :name, presence: true, length: { in: 3..15 }

  def recent_recipes
    recipes.includes(:user).order(created_at: :desc)
  end
end
