class User < ApplicationRecord

	has_many :properties
	has_many :flats
	has_many :documents
	has_many :tickets
	has_many :replies
	belongs_to :cpanel
   	belongs_to :role
  	before_create :set_default_role
  # or 
  # before_validation :set_default_role 

    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	private
	def set_default_role
	  self.role ||= Role.find_by_name('flat owner')
	end
end
