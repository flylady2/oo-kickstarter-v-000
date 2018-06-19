class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer = Backer.new(name))
    if @backers.include?(new_backer)
      return
    else
      @backer << new_backer
      new_backer.add_project(self)
    end




  end
end
