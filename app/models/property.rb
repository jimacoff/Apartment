class Property < ApplicationRecord
	belongs_to :user
	belongs_to :postflats
	has_many :flats
	has_many :documents

	validates_presence_of :content
end
