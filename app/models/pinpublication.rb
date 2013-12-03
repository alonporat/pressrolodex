class Pinpublication < ActiveRecord::Base
	attr_accessible :pin_id, :publication_id

	belongs_to	:pin 
	belongs_to	:publication

end
