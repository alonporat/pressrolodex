class Pin < ActiveRecord::Base
	belongs_to :user

	  validates :Reporter, :Publication, presence: true

end
