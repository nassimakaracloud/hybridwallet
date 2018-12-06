class ApplicationController < ActionController::Base
    
     def after_sign_in_path_for(resource)
        if resource.is_a? User
          home_home_path #edited
     else
          admin_admin_path
     end
          
     end
     
     
end
