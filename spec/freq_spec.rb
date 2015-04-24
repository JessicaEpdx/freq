require('rspec')
require('freq.rb')
require('pry')

describe('String#freq') do
  it("return the number of times that a given words appears in a given string of words") do
    expect(("cat").freq("My cat is the coolest cat.")).to(eq(2))
  end

  it("return the number of times that a given words appears in a given string of words, even if words in string are capitals or attached to punctuation") do
    expect(("pizza").freq("Pizza is the greatest. Pizza, pizza pizza!")).to(eq(4))
    
  end
end
