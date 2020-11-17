require 'pry'
class Project
attr_reader :title

  @@all = []

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
   b = ProjectBacker.all.select {|proj| proj.project == self}
   b.collect {|bckrs| bckrs.backer}


    end
  end
