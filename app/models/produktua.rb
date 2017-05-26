class Produktua < ApplicationRecord
	attr_accesible :materiala, :testua

	def self.search(search)
		if search.present?
			where("materiala ilike :q or testua ilike :q", :q "%#{search}%")
		else
			find(:all)
		end
	end

	belongs_to :user
	validates :user_id, presence: true
	default_scope -> { order(created_at: :desc) }
  	validates :materiala, presence: true, uniqueness: {case_sensitive: false}
	validates :testua, presence: true
	validates :erreferentzia, presence: true, length: {maximum:20 }
	validates :kantitatea, presence: true
end
