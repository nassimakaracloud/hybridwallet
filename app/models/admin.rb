class Admin < ActiveRecord::Base
  devise :database_authenticatable, :timeoutable
  
  def timeout_in
   15.minutes
  end
end