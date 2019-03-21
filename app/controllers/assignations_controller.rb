class AssignationsController < ApplicationController
  def index
  @people_with_project = Assignation.all
  @people = @people_with_project.map {|assignation| assignation.person.name}
  @projects = @people_with_project.map {|assignation| assignation.project.name}
  end


def destroy
  @delete_assignations = Assignation.find(params[:id])
  @delete_assignations.destroy
  redirect_to assignations_path, notice: "Has eliminado una asociación"
end
end
