class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets

  has_many :mi_propiedads
  has_many :casas

   # validates :username, presence: true, uniqueness: true, length: { minimum: 6 }
   validates :name, presence: true
end
