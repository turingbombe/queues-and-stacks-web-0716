require_relative 'stack'

class Queue
  def initialize
    @instack = Stack.new
    @outstack = Stack.new
  end

  def enqueue(val)
    @instack.push val
  end
end
