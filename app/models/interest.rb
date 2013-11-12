class Interest < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  has_many  :pininterests
  has_many  :pins, :through => :pininterests

end
