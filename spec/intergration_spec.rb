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
end