class Team
  @@all_teams = []
  
  attr_reader(:name, :id)
  
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@all_teams.length().+(1)
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
    
end

