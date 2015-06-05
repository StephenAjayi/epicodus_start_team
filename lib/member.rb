class Member
  
  @@all_members = []
  attr_reader(:first_name, :last_name, :id)
  
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name =attributes.fetch(:last_name)
    @id = @@all_members.length().+(1)
  end
  
  define_singleton_method(:all) do
    @@all_members
  end
  
  define_method(:save) do 
    @@all_members.push(self)
  end
  
  define_singleton_method(:clear) do 
    @@all_members = []
  end
end
    