require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the word counter', {:type => :feature}) do
  it('processes the users two inputs and returns the total count for the key') do
    visit('/')
    fill_in('key', :with => "balloon")
    fill_in('input_string', :with => "I took a balloon into a hot air balloon")
    click_button('Send')
    expect(page).to have_content("2")
  end
end
