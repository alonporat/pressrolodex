class Pin < ActiveRecord::Base
  attr_accessible :name, :repemail, :publication, :blog, :linkedin, :twitter, :facebook, :interests_params

  belongs_to :user

  validates :name, :presence => true

  has_many  :pininterests
  has_many  :interests, :through => :pininterests

  accepts_nested_attributes_for :pininterests, :allow_destroy => true

  def interests_params=(data)
    data["interest_id"].each do |interest_id|
      next if interest_id.blank?
      if pininterests.none?{|i| i.interest_id == interest_id.to_i}
        self.pininterests.build(interest_id: interest_id)
      end
    end
  end

end
