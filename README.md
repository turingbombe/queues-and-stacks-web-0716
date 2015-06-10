---
tags: queues, stacks, data structures
languages: ruby
resources: 5
---

# Introduction

A **queue** is like a line at the movie theater. It's "first in, first out" (FIFO), which means that the item that was put in the queue longest ago is the first item that comes out. "First come, first served."

Queues have two main methods:
`#enqueue` : adds an item to the "back" of the line
`#dequeue` : removes and returns the next item, or "front" of the line

A **stack** is like a stack of plates. It's "last in, first out" (LIFO), which means that the item that was put in the stack most recently is the first item that comes out.

Stacks have two main methods:
`#push` : adds an item to the "top" of the stack, pushing everything else
down
`#pop` : removes and returns the top item, moving the next item to the
"top"

We will also make use of a `#size` method to keep track of how big our
stack is.

# Objective

Implement a queue with 2 stacks. Your queue should have `enqueue` and `dequeue` methods and it should be "first in first out" (FIFO). Under the hood of the queue, you should utilize two stacks to manage the state of the queue.

You'll have two sets of specs in the `spec` folder to guide you. First
implement your `Stack` class, then use it to implement your `Queue`
class. When you're done, all the specs should pass.

Optimize for the time cost of **m** function calls on your queue. These can be any mix of `enqueue` and `dequeue` calls. Assume your stack implementation gives O(1) time `push` and `pop`.

### Implementation Notes

What Ruby type can we use to implement our `Stack` class that will give
O(1) `push` and `pop`?

Inside our `Queue`, we know we'll have 2 stacks. Let's call our stacks `stack1` and `stack2`.

To start, we could just push items onto `stack1` as they are enqueued. So if our first 3 function calls are enqueues of a, b, and c (in that order) we `push` them onto `stack1` as they come in.

But recall that these are LIFO stacks. If our next operation is `dequeue`, we would expect to return `a` but it's at the bottom of `stack1`, so we need a way to get to it.

This is where we need the second stack, so that we can manage both ends
of the queue. Therefore, your `enqueue` and `dequeue` methods will be
making decisions about operating on both stacks.

It would be easy enough to `pop` everything from `stack1` on a `dequeue`
call and `push` them to `stack2`, then `pop` `stack2` to get the result
for `dequeue`, but then what is the state of our stacks? What do we have
to do if the next operation is `enqueue`?

Keep in mind that the order FIFO is for the queue, not for the
individual stacks, so we need to make sure that the next item for
`dequeue` is always the oldest item that was `enqueued`.

# Questions to Answer

* What is the difference between a Queue and a Stack?

# Resources

[Queue on Wikipedia](http://en.wikipedia.org/wiki/Queue_(abstract_data_type\))

[Stacks on Wikipedia](http://en.wikipedia.org/wiki/Stack_(abstract_data_type\))

[InterviewCake Queue with Two Stacks](http://www.interviewcake.com/question/queue-two-stacks)

![queue](http://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Data_Queue.svg/500px-Data_Queue.svg.png)

![stack](http://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Data_stack.svg/500px-Data_stack.svg.png)
