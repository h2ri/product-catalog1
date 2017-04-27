class CreateProductVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :product_variants do |t|
      t.references :product, foreign_key: true
      t.string :product_varient_name
      t.integer :sku
      t.float :price

      t.timestamps
    end
  end
end
