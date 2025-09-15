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

    nums = nums.map(&:to_i)
    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
    nums.sum
  end
end
