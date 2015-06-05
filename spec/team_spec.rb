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
end
