# String Calculator TDD Kata

## Overview

This is my solution to the **Incubyte String Calculator TDD Kata**.  
The goal of the kata is to implement a string calculator with the following capabilities:

- Return 0 for an empty string.
- Return the sum of numbers provided as a string.
- Support one or more numbers separated by commas or newlines.
- Support custom delimiters specified in the format: `//[delimiter]\n[numbers]`.
- Throw an exception for negative numbers, listing all negatives.

This implementation was built **following the TDD approach**, with incremental tests and refactoring.

---

## Features Implemented

1. **Empty String**
   ```ruby
   calculator.add("") # => 0

2. **Single Number**
    ```ruby
    calculator.add("5") # => 5

3. **Multiple Numbers**
    ```ruby
    calculator.add("1,2,3") # => 6

4. **Newline as Delimiter**
    ```ruby
    calculator.add("1\n2,3") # => 6

5. **Custom Delimiter**
    ```ruby
    calculator.add("//;\n1;2") # => 3

6. **Negative Number Handling**
    ```ruby
    calculator.add("-1,2") 
    # Raises: "negative numbers not allowed -1"

    calculator.add("2,-4,3,-5") 
    # Raises: "negative numbers not allowed -4,-5"

## How to Run

1. **Install dependencies (RSpec):**
gem install rspec

2. **Run tests:**
rspec spec/string_calculator_spec.rb --format documentation

