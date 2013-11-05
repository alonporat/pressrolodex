class Pin < ActiveRecord::Base
	attr_accessible :name, :repemail, :publication, :blog, :linkedin, :twitter, :facebook

	belongs_to :user

	  validates :name, :presence => true

	  has_many	:pininterests
	  has_many	:interests, :through => :pininterests

end
