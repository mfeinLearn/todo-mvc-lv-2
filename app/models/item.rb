class Item < ApplicationRecord
  belongs_to :list
  # add methods to my model
  validates :description, :presence => true
end
