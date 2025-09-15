# lib/string_calculator.rb
class StringCalculator
  def add(input)
    return 0 if input.empty?

    if input.start_with?("//")
        delim, numbers = input[2..].split("\n", 2)
        nums = numbers.split(Regexp.union(delim, ",", "\n"))
    else
        nums = input.split(/,|\n/)
    end

    nums.map(&:to_i).sum
  end
end
