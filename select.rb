class MyEnumerable
  # include Enumerable

  def initialize(*args)
    @array = [*args]
  end

  def select
    new_array = []

    @array.each do |num|
      new_array.push(num) if yield(num).true?
    end

    new_array
  end
end

puts '> result: ' + MyEnumerable.new(1, 2, 3).select { |num| num % 2 == 1 }.inspect

# ?? how is `each` implemented??
