class Stack
	attr_accessor :stack
	def initialize
		@stack = []
	end

	def push(var)
		@stack.push(var)
	end

	def pop
		@stack.pop
	end

	def size
		@stack.size
	end

end
