class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  validates :first_name, :last_name, :position, :email, :password, :password_confirmation, :presence => true
  
  attr_accessible :first_name, :last_name, :position, :email, :password, :password_confirmation, :remember_me
end

