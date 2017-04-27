class AddVerticalRefToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :vertical, foreign_key: true
  end
end
