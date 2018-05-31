class Personalization < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :reviews

  # monetize :amount_cents
end
