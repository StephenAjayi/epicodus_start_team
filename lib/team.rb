class Team
  @@all_teams = []
  
  attr_reader(:name, :id, :members)
  
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@all_teams.length().+(1)
    @members = []
  end
  
  define_singleton_method(:all) do 
    @@all_teams
  end
  
  define_method(:save) do 
    @@all_teams.push(self)
  end
  
  define_singleton_method(:clear) do 
    @@all_teams = []
  end
  
  define_singleton_method(:find) do |id| 
    found_team = nil
    @@all_teams.each() do |team|
      if team.id().eql?(id)
        found_team = team
      end
    end
    found_team
  end
  
  define_method(:add_member) do |member|
    @members.push(member)
  end
end

