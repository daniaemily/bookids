class AddPriceToPersonalizations < ActiveRecord::Migration[5.2]
  def change
    add_monetize :personalizations, :price, currency: { present: false }
  end
end
