require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the result', {:type => :feature}) do
  it('processes the user entry and returns whether the answers were true or not') do
    visit('/')
    fill_in('question_one', :with => 'mountain')
    fill_in('question_two', :with => 'wind')
    fill_in('question_three', :with => 'dark')
    fill_in('question_four', :with => 'fish')
    fill_in('question_five', :with => 'time')

    click_button('View result')
    expect(page).to have_content('true true true true true')
  end
end
