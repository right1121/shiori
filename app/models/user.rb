class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: { maximum: 20 }
  has_many :travel_groups, dependent: :destroy
  has_many :siori, through: :travel_groups, dependent: :destroy
end
