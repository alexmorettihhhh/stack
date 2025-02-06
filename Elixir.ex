defmodule Stack do
  def new, do: []

  def push(stack, item), do: [item | stack]

  def pop([]), do: raise "Stack is empty"
  def pop([head | tail]), do: {head, tail}

  def peek([]), do: raise "Stack is empty"
  def peek([head | _]), do: head

  def is_empty([]), do: true
  def is_empty(_), do: false
end

stack = Stack.new()
stack = Stack.push(stack, 1)
stack = Stack.push(stack, 2)
{popped, stack} = Stack.pop(stack)
IO.puts(popped)  # 2