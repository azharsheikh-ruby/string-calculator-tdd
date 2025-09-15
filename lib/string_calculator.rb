# lib/string_calculator.rb
class StringCalculator
  def add(input)
   return 0 if input.empty?
    input.split(/,|\n/).map(&:to_i).sum
  end
end
