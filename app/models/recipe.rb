class Recipe < ApplicationRecord
  has_many :steps
  has_many :components
  has_many :ingredients, through: :components
end
