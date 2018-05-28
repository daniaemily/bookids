class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :description
      t.string :language
      t.integer :price
      t.text :category
      t.text :age

      t.timestamps
    end
  end
end
