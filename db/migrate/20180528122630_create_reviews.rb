class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :header
      t.text :description
      t.integer :stars
      t.references :personalization, foreign_key: true

      t.timestamps
    end
  end
end
