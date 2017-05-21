class Produktua < ApplicationRecord

	belongs_to :user
	validates :user_id, presence: true
	default_scope -> { order(created_at: :desc) }
  	validates :materiala, presence: true, uniqueness: {case_sensitive: false}
	validates :testua, presence: true
	validates :erreferentzia, presence: true, length: {maximum:20 }
	validates :kantitatea, presence: true
end
