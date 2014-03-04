require_relative 'spec_helper'

describe Queue do

  let(:queue) { Queue.new }

  it "enqueues and dequeues" do
    queue.enqueue 10
    queue.enqueue 20
    expect(queue.dequeue).to eq(10)
    queue.enqueue 30
    queue.enqueue 40
    expect(queue.dequeue).to eq(20)
    queue.enqueue 50
    expect(queue.dequeue).to eq(30)
  end
end
