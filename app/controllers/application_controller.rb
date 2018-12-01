class ApplicationController < ActionController::Base
    
     
     def after_sign_in_path_for(resource)  
       home_home_path #edited
     end
end
