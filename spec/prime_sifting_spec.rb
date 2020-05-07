require('rspec')
require('prime_sifting')

describe ('Prime') do
  it("returns an arry from 2 to the user-inputted number") do
    prime = Prime.new(12)
    expect(prime.number_array).to(eq([2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]))
  end
  it("returns an array containing numbers larger than 2 but not divisible by 2") do
    prime = Prime.new(12)
    expect(prime.no_2s).to(eq([2, 3, 5, 7, 9, 11]))
  end
  it("returns an array containing numbers larger than 2 but not divisible by 2 or 3") do
    prime = Prime.new(12)
    expect(prime.no_3s).to(eq([2, 3, 5, 7, 11]))
  end
  it("returns an array containing numbers larger than 2 but not divisible by 2, 3, or 5") do
    prime = Prime.new(20)
    expect(prime.no_5s).to(eq([2, 3, 5, 7, 11, 13, 17, 19]))
  end
  it("returns an array containing numbers larger than 2 but not divisible by 2, 3, 5, or 7") do
    prime = Prime.new(25)
    expect(prime.no_7s).to(eq([2, 3, 5, 7, 11, 13, 17, 19, 23]))
  end
  it("returns an array containing prime numbers between 1 and 100") do
    prime = Prime.new(100)
    expect(prime.no_7s).to(eq([2,3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]))
  end
end 