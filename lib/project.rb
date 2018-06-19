class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(new_backer = Backer.new(name))
    @backers << new_backer

  end
end
