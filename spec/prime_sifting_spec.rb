require('rspec')
require('prime_sifting')

describe ('prime-number') do
  it("returns an array from 2 to the inputted number") do
    prime = Prime.new(12)
    expect(prime.number_range).to(eq(2..12))
  end
  it("returns an array containing every other item from the range") do
    prime = Prime.new(12)
    expect(prime.remove_2s).to(eq([3, 5, 7, 9, 11]))
  end
end