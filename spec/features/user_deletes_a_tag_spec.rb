require 'rails_helper'

describe "user deletes a tag" do
  describe "they link from the show page" do
    it "displays all tags without the deleted entry" do
      tag_1 = Tag.create!(name: "Name_1")
      tag_2 = Tag.create!(name: "Name_2")

      visit tag_path(tag_1)
      click_link "Delete"

      expect(current_path).to eq(tags_path)
      expect(page).to have_content(tag_2.name)
      expect(page).to_not have_link(tag_1.name)
      expect(page).to have_content("Tag Name_1 Deleted!")
    end
  end
end
