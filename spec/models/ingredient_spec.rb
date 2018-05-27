require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { is_expected.to have_many(:components) }
  it { is_expected.to have_many(:recipes).through(:components) }
end
