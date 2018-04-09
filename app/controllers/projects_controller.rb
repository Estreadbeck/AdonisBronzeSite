class ProjectsController < ApplicationController
  before_action :set_project_item, only: [:edit, :update, :destroy, :show]

  def show
    @project_item = Project.find(params[:id])
  end

  def index
    @project_item = Project.all
  end

  def new
    @project_item = Project.new
  end

  def create
    @project_item = Project.new(project_params)

    respond_to do |format|
      if @project_item.save
        format.html { redirect_to projects_path, notice: 'Project has been saved.' }
        
      else
        format.html { render :new }
      end 
    end
  end

  def update
    respond_to do |format|
      if @project_item.update(project_params)
        format.html { redirect_to projects_path, notice: 'Project was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end

  end

  def destroy
    @project_item.destroy
    respond_to do |format|
      format.html { redirect_to gallery_path, notice: 'Project successfully deleted.' }
      
    end
  end

  def edit
  end

  def set_project_item
    @project_item = Project.find(params[:id])
  end


  private

  def project_params
    params.require(:project).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      images_attributes: [:id, :image, :name, :_destroy]
                                      )
  end
end
