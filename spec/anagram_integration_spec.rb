require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word returned', {:type => :feature}) do
  it('asks for a word and returns the english anagrams using those letters') do
    visit('/')
    fill_in('input1', :with => 'dad')
    fill_in('input2', :with => 'mom')
    click_button('Check')
    expect(page).to have_content('')
  end
end
