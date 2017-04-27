class Category < ApplicationRecord
  has_ancestry
  validates :name, presence: true
  belongs_to :product
end
