class FizzBuzzGenerator
  CHECKS = [{ word: 'Fizz', divisor: 3 },
           { word: 'Buzz', divisor: 5 }].freeze

  def output_for(number)
    raise ArgumentError unless valid?(number)

    output = CHECKS.each_with_object('') do |check, string|
      string << check[:word] if check?(check[:divisor], number)
    end

    output.empty? ? number : output
  end

  private

  def check?(divisor, number)
    (number % divisor).zero? || number.to_s.include?(divisor.to_s)
  end

  def valid?(number)
    number.is_a? Integer
  end
end
