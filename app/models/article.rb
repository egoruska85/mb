class Article < ApplicationRecord
  belongs_to :product
  has_many_attached :pictures
  belongs_to :user
  has_many :comments
end
