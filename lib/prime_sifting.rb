require 'pry'

class Prime
  attr_reader(:user_number, :number_array, :no_2s_array, :no_3s_array, :no_primes_array,)
  def initialize (user_number)
    @user_number = user_number
    @number_array = number_array
    @no_primes_array = no_primes_array
    
  end

  def number_array
    @number_array = (2..@user_number).to_a 
  end

  def no_2s
    @no_2s_array = number_array.delete_if {|n| n.even? && n > 2}
  end

  def no_3s
    @no_3s_array = no_2s.delete_if {|n| n % 3 == 0 && n > 3}
  end

  def no_5s
    @no_5s_array = no_3s.delete_if {|n| n % 5 == 0 && n > 5}
  end

  def no_7s
    @no_7s_array = no_5s.delete_if {|n| n % 7 == 0 && n > 7}
  end
end