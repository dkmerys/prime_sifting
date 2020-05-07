require 'pry'

class Prime
  attr_reader(:user_number, :sieve_numbers)
  def initialize (user_number)
    @user_number = user_number
    @sieve_number = sieve_number
  end

  def number_range()
    number = 2..@user_number
    # .map{ |n| Prime.prime?(n)}
  end

  def remove_2s
    number_range.reject { |r| r.even?}
  end
  
  def sieve_number
    @sieve_number = [1, 2, 3, 5, 7]
  end

end