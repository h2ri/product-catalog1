class CreateProductDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :product_details do |t|
      t.references :product_variant, foreign_key: true
      t.references :variant_value, foreign_key: true

      t.timestamps
    end
  end
end
