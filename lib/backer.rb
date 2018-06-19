require 'pry'
class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(new_project = Project.new(title))
    @backed_projects << new_project unless new_project == nil
    new_project.add_backer(self) unless new_project = self

  end
end
