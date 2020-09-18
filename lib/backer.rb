class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        ProjectBacker.all.map do |pb|
            pb.project if pb.backer == self
        end.compact
    end


end


