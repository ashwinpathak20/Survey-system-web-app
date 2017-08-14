class Question < ActiveRecord::Base
	has_many :options , dependent: :destroy
	belongs_to :survey
	validates :q_name, presence: true, length: {maximum: 1000}, uniqueness: { case_sensitive: false }
end
