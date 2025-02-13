class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :images
  belongs_to :country
  has_many :productcomments
  has_many :articles
  has_many_attached :videos
  belongs_to :season
  belongs_to :material
  belongs_to :compound
  belongs_to :collection
  belongs_to :style
  has_many :colors
  has_one :viewlining
  has_one :viewclasp

  is_impressionable
end
