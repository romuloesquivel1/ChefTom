class Meal < ApplicationRecord
  validates :name, presence: true
  validates :category_id, presence: true
  validates :description, presence: true
  validates :price, presence: true

  belongs_to :category
end
