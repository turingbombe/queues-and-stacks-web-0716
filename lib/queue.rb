require_relative 'stack'

class Queue

  def initialize
    @in_stack = Stack.new
    @out_stack = Stack.new
  end

  def enqueue(val)
    @in_stack.push val
  end

  def dequeue
    if @out_stack.size == 0
      while @in_stack.size > 0
        @out_stack.push @in_stack.pop
      end
    end
    @out_stack.pop
  end

end