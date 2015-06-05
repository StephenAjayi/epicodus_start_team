require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/team')
require('./lib/member')

get('/') do 
  @teams = Team.all()
  erb(:index)
end

post('/team_added') do
  name = params.fetch('name')
  @team = Team.new(:name => name)
  @team.save()
  erb(:success_team)
end

get('/teams/:id') do 
  id = params.fetch('id')
  @team = Team.find(id.to_i)
  erb(:team)
end

post('/member_added') do 
  first_name = params.fetch("first_name")
  last_name = params.fetch("last_name")
  @member = Member.new(:first_name => first_name, :last_name => last_name)
  @member.save()
  @team = Team.find(params.fetch('team_id').to_i)
  @team.add_member(@member)
  erb(:success_member)
end