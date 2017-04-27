class AddUcodeToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :ucode, :string
    add_column :products, :qty_per_pack, :string
  end
end
