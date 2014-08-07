class PetClub < ActiveRecord::Base
	has_many :dogs
	belongs_to :owner
end