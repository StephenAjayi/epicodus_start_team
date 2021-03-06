require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application 

describe('start_team path', {:type => :feature}) do
  it('processes a users input to create a team') do 
    visit('/')
    fill_in('name', :with => "Orion")
    click_button('Add Team')
    expect(page).to have_content("Orion has been added to teams!")
  end
  it('processes a users input to add a member') do 
    visit('/')
    click_link('Orion')
    fill_in('first_name', :with => "Max")
    fill_in('last_name', :with => "samuelson")
    click_button("Add Member")
    expect(page).to have_content("Max has been added to team Orion!")
  end
end