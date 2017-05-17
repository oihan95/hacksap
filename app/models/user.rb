class User < ApplicationRecord
	has_many :produktuas, dependent: :destroy

	before_save { erab_izena.downcase! }
	before_save { self.erab_izena = erab_izena.downcase }
	validates :erab_izena, presence: true, uniqueness: { case_sensitive: false }
	validates :izena, presence: true, length: { maximum: 50 }
	validates :abizena, presence: true
	validates :password, presence: true, confirmation: true, length: { minimum: 6}, :confirmation => true
	validates :password_confirmation, presence: true
	has_secure_password
end