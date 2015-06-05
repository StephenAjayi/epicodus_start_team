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
  
  describe('.all') do 
    it('starts out empty at first') do 
      expect(Member.all()).to(eq([]))
    end
  end
  
  describe('#save') do 
    it('save an intance of Member to an array') do 
    test_member = Member.new(:first_name => "Greg", :last_name => "Marx")
    test_member.save()
    expect(Member.all()).to(eq([test_member]))
    end
  end
end
