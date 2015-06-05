class Member
  
  @@all_members = []
  attr_reader(:first_name, :last_name)
  
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name =attributes.fetch(:last_name)
  end
  
  define_singleton_method(:all) do
    @@all_members
  end
    
end
    