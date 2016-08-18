class Property < ApplicationRecord
	belongs_to :user
	has_many :flats
	has_many :documents
end
