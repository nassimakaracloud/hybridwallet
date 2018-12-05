class FileListsController < ApplicationController

  def create
    current_user.file_lists.create upload_params
    redirect_to cryptotables_path, notice: 'File uploaded!'
  end
  
  private 
  
  def upload_params
    params.require(:file_list).permit!
  end
end
