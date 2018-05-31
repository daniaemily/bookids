class Book < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :personalizations, dependent: :destroy

  monetize :price_cents
end
