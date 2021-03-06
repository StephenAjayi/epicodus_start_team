require('rspec')
require('member')

describe(Member) do 
  before do 
    Member.clear()
  end
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
  
  describe('.clear') do 
    it('empties all saved intances of Member from array') do 
      test_member = Member.new(:first_name => "Blake", :last_name => "Martin")
      test_member.save()
      expect(Member.clear()).to(eq([]))
    end
  end
  
  describe('#id') do 
    it('ascribes an id number to an instance of Member') do 
      test_member = Member.new(:first_name => "Mason", :last_name => "Brock")
      expect(test_member.id()).to(eq(1))
    end
  end
  
  describe('.find') do 
    it('returns an instance of Member by its id number') do 
      test_member = Member.new(:first_name => "Matt", :last_name => "Grey")
      test_member.save()
      test_member2 = Member.new(:first_name => "Sarah", :last_name => "Smith")
      test_member2.save()
      expect(Member.find(test_member.id())).to(eq(test_member))
    end
  end
end
