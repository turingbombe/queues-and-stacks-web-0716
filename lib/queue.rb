require_relative 'stack'

class Queue
	attr_accessor :queue
	def initialize
		@queue = Stack.new
	end

	def enqueue(var)
		@queue.push(var)
	end

	def dequeue
		@queue.stack.shift
	end
end
