class Ticket < ApplicationRecord
	belongs_to :user
	has_many :replies
end
