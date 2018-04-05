class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def gallery
    @project_item = Project.all
  end

  def employment
  end
end
