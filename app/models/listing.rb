class Listing < ApplicationRecord

  validates :title, :price, :description, presence: true


end
