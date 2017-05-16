class Product < ApplicationRecord

  validates :material, presence:true, uniqueness: {case_sensitive: true}
  validates :text, presence:true, length: {maximun:150}
  validates :reference, presence: true, length: {maximum:20 }
  validates :quantity, presence: true
end