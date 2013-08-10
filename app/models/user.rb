class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  validates_uniqueness_of :username
  devise :database_authenticatable, :registerable, #:recoverable,
          :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :first_name, :last_name
  # attr_accessible :title, :body

  has_many :pins, :dependent => :destroy
end
