class Product < ApplicationRecord
  has_many :categories
  has_many :verticals
  has_many :manufacturers
end
