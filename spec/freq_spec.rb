require('rspec')
require('freq.rb')
require('pry')

describe('String#freq') do
  it("returns the number of times that a given words appears in a given string of words") do
    expect(("cat").freq("My cat is the coolest cat.")).to(eq(2))
  end
end
