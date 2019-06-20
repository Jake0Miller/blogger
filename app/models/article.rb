class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
end
