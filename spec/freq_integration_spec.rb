require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the frequency path', {:type => :feature}) do
  it('processes both user entries to see how many times word is in string of words') do
    visit('/')
    fill_in('word_to_count', :with => 'cat')
    fill_in('given_sentence', :with => 'My cat is the coolest cat')
    click_button("What's the frequency Kenneth?")
    expect(page).to have_content(2)
  end
end
