class Stack
    def initialize
      @items = []
    end
  
    def push(item)
      @items.push(item)
    end
  
    def pop
      @items.pop
    end
  
    def peek
      @items.last
    end
  
    def is_empty?
      @items.empty?
    end
  end
  
  stack = Stack.new
  stack.push(1)
  stack.push(2)
  puts stack.pop  # 2