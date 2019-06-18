require 'rails_helper'

describe "user edits an article" do
  describe "they link from the show page" do
    describe "they fill in new title and body" do
      it "displays the new article on a show page" do
        article = Article.create!(title: "Title 1", body: "Body 1")

        visit article_path(article)
        click_link "Edit"

        fill_in "article[title]", with: "New Title!"
        fill_in "article[body]", with: "New Body!"
        click_on "Update Article"

        expect(page).to have_content("New Title!")
        expect(page).to have_content("New Body!")
        expect(page).to have_content("Article 'New Title!' Updated!")
      end
    end
  end
end
