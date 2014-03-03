require_relative 'spec_helper'

describe Stack do
  it "pushes and pops in LIFO order" do
    stack = Stack.new
    stack.push 10
    stack.push 20
    expect(stack.pop).to eq(20)
    stack.push 30
    expect(stack.pop).to eq(30)
    expect(stack.pop).to eq(10)
  end
end
