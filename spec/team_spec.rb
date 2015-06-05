require('rspec')
require('team')
require('member')

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
  
  describe('#members') do 
    it(' returns the members in a team, its empty at first') do 
      test_team = Team.new(:name => "Halo")
      expect(test_team.members()).to(eq([]))
    end
  end
  
  describe('#add_member') do 
    it('adds a member to a team') do 
      test_team =  Team.new(:name => "Think Big")
      test_member = Member.new(:first_name => "Jason", :last_name => "Masters")
      test_team.add_member(test_member)
      expect(test_team.members()).to(eq([test_member]))
    end
  end
end
