class ColorsProduct < ApplicationRecord
  belongs_to :color
  belongs_to :product
end
