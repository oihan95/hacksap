class Product < ApplicationRecord

  validates :material, presence: true, uniqueness: {case_sensitive: false}
  validates :text, presence: true
  validates :reference, presence: true, length: {maximum:20 }
  validates :quantity, presence: true
end