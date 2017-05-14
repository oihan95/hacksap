class User < ApplicationRecord
	validates :izena, presence: true
	validates :erab_izena, presence: true
end
