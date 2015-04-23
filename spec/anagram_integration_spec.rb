require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("anagram path", {:type => :feature}) do
  it("when user enters a word and words to check, we output which words are anagrams") do
    visit('/')
    fill_in('main_word', :with => "bat")
    fill_in('words_to_check', :with => "abt tab house")
    click_button('Send')
    expect(page).to have_content("abt tab")
  end
end
