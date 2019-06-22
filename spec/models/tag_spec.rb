require 'rails_helper'

describe Tag, type: :model do
  describe "relationships" do
    it {should have_many(:taggings)}
    it {should have_many(:articles).through(:taggings)}
  end

  describe "instance methods" do
    describe "#to_s" do
      it "turns tag into a string" do
        tag = Tag.create(name: "tag_1")

        expect(tag.to_s).to eq("tag_1")
      end
    end
  end
end
