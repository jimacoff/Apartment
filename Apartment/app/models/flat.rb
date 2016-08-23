class Flat < ApplicationRecord
	belongs_to :user
	belongs_to :properties

	validates_presence_of :flat_nr, :name 
	
end

