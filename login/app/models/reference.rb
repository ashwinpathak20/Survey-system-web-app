class Reference < ActiveRecord::Base
	belongs_to :users
	belongs_to :questions
	belongs_to :options
end
