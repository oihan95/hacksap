class User < ApplicationRecord
	validates :izena, presence: true, length: { maximum: 50 }
	validates :erab_izena, presence: true, length: { maximum: 255 }
end
