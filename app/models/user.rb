class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
   
  attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name, :last_name,
   :confirmed_at, :confirmation_token, :confirmation_sent_at, :unconfirmed_email, :mobile, :username, :status, :login
  
  attr_accessor :login
  
 
  has_one :client
  #logging in using username
  def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
  end

<<<<<<< HEAD
  attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name, :last_name,
   :confirmed_at, :confirmation_token, :confirmation_sent_at, :unconfirmed_email, :mobile, :username, :status, :login
  
  has_many :clients
  accepts_nested_attributes_for :clients
 
=======
 

>>>>>>> 39943ecb0ae90b96430903496e5f1f60e6c3b59e

end
