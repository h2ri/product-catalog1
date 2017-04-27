class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.string :variant

      t.timestamps
    end
  end
end
