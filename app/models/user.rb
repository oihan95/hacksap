class User < ApplicationRecord
	before_save { erab_izena.downcase! }
	before_save { self.erab_izena = erab_izena.downcase }
	validates :erab_izena, presence: true, uniqueness: { case_sensitive: false }
	validates :izena, presence: true, length: { maximum: 50 }
	validates :abizena, presence: true
	validates :pasahitza, presence: true, confirmation: true, length: { minimum: 6}, :confirmation => true
	validates :pasahitza_confirmation, presence: true
end