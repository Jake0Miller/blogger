require 'rails_helper'

describe Tagging, type: :model do
  describe "validations" do
    it {should validate_presence_of(:tag_id)}
    it {should validate_presence_of(:article_id)}
  end

  describe "relationships" do
    it {should belong_to(:article)}
    it {should belong_to(:tag)}
  end
end
