class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :name, presence: true, length: { maximum: 20 }
  
  has_many :travel_groups, dependent: :destroy
  has_many :sioris, through: :travel_groups, dependent: :destroy
  
    
  def follow(siori)
    travel_groups.create(siori_id: siori.id)
  end
  
  def follow?(siori)
  end
end
