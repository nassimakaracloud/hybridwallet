class FileListsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed_in?
  def create
    current_user.file_lists.create upload_params
    redirect_to home_home_path, notice: 'File uploaded!'
  end
  
  private 
  
  def upload_params
    params.require(:file_list).permit!
  end
end
