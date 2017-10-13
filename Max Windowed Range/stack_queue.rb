class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(item)
    @store << item
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    size == 0
  end
end


class StackQueue
  def initialize
    @one = MyStack.new
    @two = MyStack.new
  end

  def enqueue(item)
    @one.push(item)
  end

  def dequeue
    if @two.empty?
      until @one.empty?
        @two.push(@one.pop)
      end
    end

    @two.pop
  end

  def size
    @one.size + @two.size
  end

  def empty?
    @one.empty? && @two.empty?
  end

end
