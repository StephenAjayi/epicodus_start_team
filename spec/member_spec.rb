require('rspec')
require('member')

describe(Member) do 
  describe('#first_name') do 
    it('returns the fist name of a member') do 
      test_member = Member.new(:first_name => "Jeff", :last_name => "Holmes")
      expect(test_member.first_name()).to(eq("Jeff"))
    end
  end
  
  describe('#last_name') do 
    it('returns the last name of a member') do 
      test_member = Member.new(:first_name => "Jackson", :last_name => "Carter") 
      expect(test_member.last_name()).to(eq("Carter"))
    end
  end
end
