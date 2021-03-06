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
  
  def following?(siori)
    sioris.include?(siori)
  end
  
  def unfollow(siori)
    travel_groups.find_by(siori_id: siori).destroy
  end
  
  def owner?(siori)
    travel_groups.find_by(siori_id: siori) ? travel_groups.find_by(siori_id: siori).owner : false
  end
  
  def owner_siori
    newest_siori.select do |siori|
      siori.owner
    end
  end
  
  def followed_siori
    newest_siori.select do |siori|
      !siori.owner
    end
  end
  
private
  def newest_siori
    travel_groups.sort_by { |a| a[:updated_at] }.reverse
  end
end
