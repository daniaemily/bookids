class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :sku
      t.string :name
      t.string :author
      t.text :description
      t.string :language
      t.text :category
      t.text :age
      t.string :photo
      t.integer :publishing_year

      t.timestamps
    end
  end
end
