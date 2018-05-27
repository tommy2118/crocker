require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context "associations" do
    it { is_expected.to have_many(:steps) }
    it { is_expected.to have_many(:components) }
    it { is_expected.to have_many(:ingredients).through(:components) }
  end

  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to define_enum_for(:protein)
      .with([:beef, :chicken, :pork, :other])}
    it { is_expected.to define_enum_for(:cook_method)
      .with([:oven, :grill, :stove_top, :crock_pot])}
    it { is_expected.to define_enum_for(:diet_type)
      .with([:traditional, :low_carb, :vegan, :vegetarian])}
  end
end
