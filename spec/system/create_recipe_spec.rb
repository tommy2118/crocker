require 'rails_helper'

RSpec.describe "create recipe", type: :system, js: true do
  it "allows a user to create a recipe" do
    visit new_recipe_path

    fill_in "Name", with: "Hard Boiled Egg"
    select "Traditional", from: "Diet type"
    select "Other", from: "Protein"
    select "Stove top", from: "Cook method"
    fill_in "Prepare time", with: 1
    fill_in "Cook time", with: 10

    find_button("Save").click



    expect(page).to have_content "foo"
  end
end
