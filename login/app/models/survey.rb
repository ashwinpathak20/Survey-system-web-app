class Survey < ActiveRecord::Base
	has_many :questions , dependent: :destroy
	has_many :options , dependent: :destroy
	has_many :links
	validates :name, presence: true, length: {maximum: 255}, uniqueness: { case_sensitive: false }
end
