class Book < ApplicationRecord
  searchkick

  has_many :pages, -> { order(created_at: :asc) }, dependent: :destroy
  has_many :personalizations, dependent: :destroy
  has_many :favorites
  has_many :reviews, through: :personalizations

  monetize :price_cents

  def liked?(user)
    return user.favorite_books.include?(self) if user.favorite_books
  end
end
