class Publication < ActiveRecord::Base
	attr_accessible :name

  validates :name, :presence => true

  has_many  :pinpublications
  has_many  :pins, :through => :pinpublications

end
