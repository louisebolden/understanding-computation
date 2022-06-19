# Using Ruby as a metalanguage to investigate and understand the inference rules
# of the toy programming language, "SIMPLE". (See Understanding Computation pg 22
# for the mathematical description of SIMPLE's small-step semantics.)

class Number < Struct.new(:value)
  def to_s
    value.to_s
  end

  def inspect
    "«#{self}»"
  end
end

class Add < Struct.new(:left, :right)
  def to_s
    "#{left} + #{right}"
  end

  def inspect
    "«#{self}»"
  end
end

class Multiply < Struct.new(:left, :right)
  def to_s
    "#{left} * #{right}"
  end

  def inspect
    "«#{self}»"
  end
end

# two = Number.new(2)
# five = Number.new(5)

# puts "> two: #{two}"
# puts "> five: #{five}"
# puts "> sum: #{Add.new(two, five)}"
# puts "> product: #{Multiply.new(two, five)}"

puts Add.new(
  Multiply.new(Number.new(1), Number.new(2)),
  Multiply.new(Number.new(3), Number.new(4))
)
