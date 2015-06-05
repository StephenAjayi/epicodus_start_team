require('rspec')
require('team')

describe(Team) do 
  describe('#name') do 
    it('returns the name of a team') do 
      test_team =Team.new(:name => "Blizzard")
      expect(test_team.name()).to(eq("Blizzard"))
    end
  end
  
  describe('.all') do 
    it('starts out empty at first') do 
      expect(Team.all()).to(eq([]))
    end
  end
  
  describe('#save') do 
    it('save and instance of Team to an array') do 
      test_team = Team.new(:name => "Quick Strike")
      test_team.save()
      expect(Team.all()).to(eq([test_team]))
    end
  end
  
  describe('.clear') do 
    it('empty all saved instances of Team from the array') do 
      test_team = Team.new(:name => "Rapture")
      test_team.save()
      Team.clear()
      expect(Team.all()).to(eq([]))
    end
  end
  
  describe('#id') do 
    it('ascribes an intance of team an is number') do 
      test_team = Team.new(:name => "Major Lazer") 
      expect(test_team.id()).to(eq(1))
    end
  end
  
  describe('.find') do 
    it('return an instance of team by its id') do 
      test_team = Team.new(:name => "Overdrive")
      test_team.save()
      test_team2 = Team.new(:name => "Reach")
      test_team2.save()
      expect(Team.find(test_team.id())).to(eq(test_team))
    end
  end
end
