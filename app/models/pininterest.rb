class Pininterest < ActiveRecord::Base
attr_accessible :pin_id, :interest_id

	belongs_to	:pin 
	belongs_to	:interest
end
