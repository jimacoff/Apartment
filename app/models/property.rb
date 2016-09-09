class Property < ApplicationRecord
	belongs_to :user
	belongs_to :postflats
	has_many :flats
	has_many :documents
	has_many :whiteboards
	has_many :ownerhistories

	validates_presence_of :content

	
end
