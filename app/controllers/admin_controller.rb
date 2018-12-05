class AdminController < ApplicationController
  before_action :authenticate_admin!
  before_action :admin_signed_in?, only: [:admin]
  
  def admin
    @Users = User.all
    puts @Users
  end
   
    
end
