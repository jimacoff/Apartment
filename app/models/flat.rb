class Flat < ApplicationRecord
	belongs_to :user
	belongs_to :properties
	belongs_to :postflats
	has_many :tickets
	validates_presence_of :flat_nr, :name 
	
end

