require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('add word', {:type => :feature}) do
  it('adding a word') do
    visit('/')
    fill_in('word', :with => 'president' )
    click_button('Add a new Word')
    expect(page).to have_content('president')
  end
end
