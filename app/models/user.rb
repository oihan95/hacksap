class User < ApplicationRecord
	before_save { erab_izena.downcase! }
	before_save { self.erab_izena = erab_izena.downcase }
	validates :izena, presence: true, length: { maximum: 50 }
	validates :erab_izena, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
end
