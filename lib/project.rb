class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer = Backer.new(name))
    @backers << new_backer if new_backer != nil
    new_backer.back_project(self) unless @backed_projects.include?(self)


  end
end
