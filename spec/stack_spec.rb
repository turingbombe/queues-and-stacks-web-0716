require_relative 'spec_helper'

describe Stack do
  let(:stack) { Stack.new }

  it "pushes and pops in LIFO order" do
    stack.push 10
    stack.push 20
    expect(stack.pop).to eq(20)
    stack.push 30
    expect(stack.pop).to eq(30)
    expect(stack.pop).to eq(10)
  end

  it "knows the size of the stack" do
    stack.push 'a'
    stack.push 'b'
    stack.push 'c'
    expect(stack.size).to eq(3)
    stack.pop
    stack.pop
    stack.pop
    expect(stack.size).to eq(0)
  end
end
