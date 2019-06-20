require 'rails_helper'

describe Tag, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should have_many(:articles).through(:taggings)}
  end

  describe "relationships" do
    it {should have_many(:taggings)}
  end
end
