class Ingredient < ApplicationRecord
  has_many :components
  has_many :recipes, through: :components
end
