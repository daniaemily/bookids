class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :favorite
    create_table :favorites do |t|
      t.boolean :like, default: true
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
