require 'pry'
class Backer
attr_reader :name

    @@all = []

    def initialize(name)
      @name = name
    end

    def back_project(project)
      ProjectBacker.new(project, self)
    end

    def backed_projects
      project_backers = ProjectBacker.all.select {|proj| proj.backer == self}
 project_backers.collect {|pb| pb.project}
      end
    end
