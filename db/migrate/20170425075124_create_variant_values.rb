class CreateVariantValues < ActiveRecord::Migration[5.0]
  def change
    create_table :variant_values do |t|
      t.string :value
      t.references :Variant, foreign_key: true

      t.timestamps
    end
  end
end
