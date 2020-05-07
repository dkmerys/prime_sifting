require('rspec')
require('prime_sifting')

describe ('prime-number') do
  it("returns an array from 2 to the inputted number") do
    prime = Prime.new(12)
    expect(prime.number_range).to(eq(2..12))
  end
end