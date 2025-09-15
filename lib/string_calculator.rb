# lib/string_calculator.rb
class StringCalculator
  def add(input)
   return 0 if input.empty?
    input.split(",").map(&:to_i).sum
  end
end
