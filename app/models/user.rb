class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :personalizations, dependent: :destroy
  has_many :books, through: :personalizations
  has_many :orders, dependent: :destroy
  has_many :favorites
  has_many :favorite_books, through: :favorites, source: :book

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence:true
  validates :last_name, presence:true
end
