require 'rails_helper'

describe "user sees one tag" do
  describe "they link from an article show" do
    it "displays a tag's information" do
      article = Article.create!(title: "New Title", body: "New Body")
      tag = article.tags.create!(name: "Name")

      visit article_path(article)

      expect(page).to have_content(tag.name)
      expect(page).to have_link(tag.name)

      click_link tag.name

      expect(current_path).to eq(tag_path(tag))

      expect(page).to have_content(tag.name)
      expect(page).to_not have_link(tag.name)
    end
  end
end
