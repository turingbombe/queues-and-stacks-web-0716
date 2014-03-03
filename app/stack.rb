class Stack

  def initialize
    @elements = []
  end

  def push(datum)
    @elements.push datum
    self
  end

  def pop
    @elements.pop
  end
end
