class Pin < ActiveRecord::Base
  attr_accessible :name, :repemail, :publication, :blog, :linkedin, :twitter, :facebook, :interest_params, :publication_ids

  validates_uniqueness_of :name

  belongs_to :user

  validates :name, :presence => true

  has_many  :pininterests
  has_many  :interests, :through => :pininterests

  has_many  :pinpublications
  has_many  :publications, :through => :pinpublications


  accepts_nested_attributes_for :pininterests, :allow_destroy => true

  def interest_params=(data)
    pininterests.destroy_all
    data.each do |interest_id|
      next if interest_id.blank?
      if pininterests.none?{|i| i.interest_id == interest_id.to_i}
        self.pininterests.build(interest_id: interest_id)
      end
    end
  end

  def publication_ids=(publications_ids)
    pinpublications.destroy_all
    publications_ids.each do |publication_id|
      if publication_id.present? && pinpublications.none?{|i| i.publication_id == publication_id.to_i}
        self.pinpublications.build(:publication_id => publication_id)
      end
    end
  end

end
