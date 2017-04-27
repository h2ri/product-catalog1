class AddEnityNameToManufacturer < ActiveRecord::Migration[5.0]
  def change
    add_column :manufacturers, :manufacturer_entity_name, :string
    add_column :manufacturers, :manufacturer_mapping_id, :string
  end
end
