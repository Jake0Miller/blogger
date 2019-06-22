require 'rails_helper'

describe "user sees all tags" do
  describe "they visit /tags" do
    it "displays all tags" do
      tag_1 = Tag.create!(name: "Name_1")
      tag_2 = Tag.create!(name: "Name_2")

      visit '/tags'

      expect(page).to have_content(tag_1.name)
      expect(page).to have_content(tag_2.name)
    end
  end
end
