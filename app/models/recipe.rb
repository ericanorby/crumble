class Recipe < ApplicationRecord
  attr_accessible :web_source
  
  has_many :ingredients
  has_many :favorites
end
