class Book < ApplicationRecord
  searchkick

  has_many :pages, -> { order(created_at: :asc) }, dependent: :destroy
  has_many :personalizations, dependent: :destroy
  has_many :favorites

  monetize :price_cents

  def liked?(user)
    return user.favorite_books.include?(self)
  end
end
