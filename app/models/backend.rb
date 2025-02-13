class Backend < ApplicationRecord
  has_many_attached :files
  has_many_attached :images
end
