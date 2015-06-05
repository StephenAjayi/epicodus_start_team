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
end
