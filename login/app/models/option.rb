class Option < ActiveRecord::Base
	belongs_to :survey
	belongs_to :question
	validates :q_option, presence: true, length: {maximum: 1000}
end
