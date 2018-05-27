class Recipe < ApplicationRecord
  has_many :steps
  has_many :components
  has_many :ingredients, through: :components

  validates :name, presence: true

  enum protein: [
    :beef,
    :chicken,
    :pork,
    :other
  ]

  enum cook_method: [
    :oven,
    :grill,
    :stove_top,
    :crock_pot
  ]

  enum diet_type: [
    :traditional,
    :low_carb,
    :vegan,
    :vegetarian
  ]

end
