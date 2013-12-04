class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 attr_accessible :FirstName, :LastName, :Nickname, :email, :password

  has_many :pins

  validates :FirstName, :LastName, :Nickname, presence: true
end
