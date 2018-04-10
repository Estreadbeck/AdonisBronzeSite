class ImagesController < ApplicationController

  def create
    
  end
  
  def new
  end

  def edit
  end

  def destroy
  end


  private

  def image_params
    params.require(:images).permit(:image, :name, :description, :project_id)
  end
  
end
