require("rspec")
require("sinatra")
require('capybara/rspec')
require('word_count')

describe("String#word_count") do
  it "returns a number od how many times the chosen word was found in the sentence" do
    expect(("color").word_count("My favorite color is blue and Mason's favorite color is green.")).to(eq("color color"))
  end
  # it "returns a number od how many times the chosen word was found in the sentence" do
  #   expect(("color").word_count("My favorite color is blue and Mason's favorite color is green.")).to(eq(2))
  # end
end
