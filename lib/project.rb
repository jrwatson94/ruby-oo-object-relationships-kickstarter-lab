class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.map do |pb|
            pb.backer if pb.project == self
        end.compact
    end




end 