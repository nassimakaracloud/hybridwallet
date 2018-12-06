class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
         has_many :cryptotables
         has_many :currencies
         has_many :file_lists
         
  def timeout_in
   15.minutes
  end   
         
end
