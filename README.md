---
name: Queues and Stacks
tags: queues, stacks, data structures
languages: ruby
---

http://www.interviewcake.com/question/queue-two-stacks

A queue is like a line at the movie theater. It's "first in, first out" (FIFO), which means that the item that was put in the queue longest ago is the first item that comes out. "First come, first served."

Queues have two main methods:
enqueue() : adds an item
dequeue() : removes and returns the next item in line

A stack is like a stack of plates. It's "last in, first out" (LIFO), which means that the item that was put in the queue most recently is the first item that comes out.

Stacks have two main methods:
push() : adds an item
pop() : removes and returns the top item

Implement a queue ↴ with 2 stacks ↴ . Your queue should have an enqueue and a dequeue function and it should be "first in first out" (FIFO).
Optimize for the time cost of m function calls on your queue. These can be any mix of enqueue and dequeue calls.
Assume you already have a stack implementation and it gives O(1) time push and pop.

Let's call our stacks stack1 and stack2.

To start, we could just push items onto stack1 as they are enqueued. So if our first 3 function calls are enqueues of a, b, and c (in that order) we push them onto stack1 as they come in.

But recall that stacks are last in, first out. If our next function call was a dequeue() we would need to return a, but it would be on the bottom of the stack.

[Queue on Wikipedia](http://en.wikipedia.org/wiki/Queue_(abstract_data_type\))

[Stacks on Wikipedia](http://en.wikipedia.org/wiki/Stack_(abstract_data_type\))

![queue](http://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Data_Queue.svg/500px-Data_Queue.svg.png)

![stack](http://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Data_stack.svg/500px-Data_stack.svg.png)

What's the difference between a Queue and a Stack?