require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('how many time the chosen word was found',{:type => :feature}) do
  it "takes a word and a sentence from user and return how many times the chosen word was found in the sentence" do
    visit('/')
    fill_in('input', :with => "color")
    fill_in('sentence', :with => "My favorite color is blue and Mason's favorite Color is green.")
    click_button('Submit')
    expect(page).to have_content(2)
  end
end
