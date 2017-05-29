class Produktua < ApplicationRecord

	def self.search(search)
		if search.present?
			self.where("materiala LIKE ? OR testua LIKE ? OR erreferentzia LIKE ? OR kantitatea LIKE ?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%")
		else
			self.all
		end
	end

	belongs_to :user
	validates :user_id, presence: true
	default_scope -> { order(created_at: :desc) }
  	validates :materiala, presence: true, uniqueness: {case_sensitive: false}
	validates :testua, presence: true
	validates :erreferentzia, presence: true, length: {maximum:200 }
	validates :kantitatea, presence: true
end
