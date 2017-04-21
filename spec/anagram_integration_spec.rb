require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the words returned', {:type => :feature}) do
  it('asks for a word and returns the english words that can be made with those letters') do
    visit('/')
    fill_in('anagram', :with => 'dad')
    click_button('Rearrange')
    expect(page).to have_content('add')
  end
end
