class ProjectsController < ApplicationController
  before_action :set_project_item, only: [:edit, :update, :destroy, :show]

  def show
  end

  def new
    @project_item = Project.new
  end

  def update
  end

  def destroy
  end

  def edit
  end




  private

  def portfolio_params
    params.require(:project).permit(:title, 
                                      :subtitle, 
                                      :body
                                      )
  end
end
