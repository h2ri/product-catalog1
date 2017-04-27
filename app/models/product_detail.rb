class ProductDetail < ApplicationRecord
  belongs_to :product_variant
  belongs_to :variant_value
end
