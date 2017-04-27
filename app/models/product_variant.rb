class ProductVariant < ApplicationRecord
  has_many :product_detail
  belongs_to :product
end
