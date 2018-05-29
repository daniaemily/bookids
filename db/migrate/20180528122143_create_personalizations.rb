class CreatePersonalizations < ActiveRecord::Migration[5.2]
  def change
    create_table :personalizations do |t|
      t.string :character_name
      t.integer :character_age
      t.string :character_gender
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true
      t.string :state
      t.string :book_sku
      t.monetize :amount, currency: { present: false}
      t.jsonb :payment

      t.timestamps
    end
  end
end
