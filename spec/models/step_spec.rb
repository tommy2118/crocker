require 'rails_helper'

RSpec.describe Step, type: :model do
  it { is_expected.to belong_to(:recipe) }
end
