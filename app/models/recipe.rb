class Recipe < ApplicationRecord
  belongs_to :favorite
  has_many :ingredients
end
