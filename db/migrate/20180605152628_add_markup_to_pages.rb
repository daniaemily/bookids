class AddMarkupToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :markup, :string, default: "paragraph"
  end
end
