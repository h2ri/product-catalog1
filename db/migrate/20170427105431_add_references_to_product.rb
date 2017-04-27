class AddReferencesToProduct < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :products, :manufacturers
    add_foreign_key :products, :categories
    add_foreign_key :products, :verticals
  end
end
