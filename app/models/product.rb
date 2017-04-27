class Product < ApplicationRecord
  has_one :category
  has_one :vertical
  has_one :manufacturer
end
