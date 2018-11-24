class WelcomeController < ApplicationController
    skip_before_action :authenticate_user!
    
    def welcome
    end
    
    def about
    end
    
    def faq
    end
    
    def index
        puts current_user
    end    


end
