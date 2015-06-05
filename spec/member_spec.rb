require('rspec')
require('member')

describe(Member) do 
  describe('#first_name') do 
    it('returns the fist name of a member') do 
      test_member = Member.new(:first_name => "Jeff", :last_name => "Holmes")
      expect(test_member.first_name()).to(eq("Jeff"))
    end
  end
end
