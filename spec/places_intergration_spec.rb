require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expectations, false)

describe('the place website path', :type => :feature) do
  it('shows list of places and accepts new places') do
    visit('/')
    fill_in('description', :with => 'Russia')
    click_button('Add place')
    click_link('Back')
    expect(page).to have_content('Russia')
  end
end
