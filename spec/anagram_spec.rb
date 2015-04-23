require('rspec')
require('anagram.rb')

describe("String#anagram") do
  it("program runs through list of words and lets user know which ones are anagrams of the target wrord(s) ") do
  expect("bat".check_anagram("tab abt crow")).to(eq("tab abt"))
 end
end
