class Stack
  def initialize
    # create ivar to store stack here!
    @storage = []

  end

  def add(el)
    # adds an element to the stack
    @storage.push(el)
  end

  def remove
    # removes one element from the stack
    @storage.pop(el)
  end

  def show
    # return a copy of the stack
    p @storage
  end
end

class Queue
  def initialize
    @storage = []
  end

  def enqueue(el)
    @storage.push(el)
  end

  def dequeue
    @storage.unshift(el)
  end

  def show
    p @storage
  end
end

class Map
  def initialize
    @storage = []
  end

  def assign(key, value)
    if !lookup(key).nil?
      remove(key)
    end
    @storage << [key, value]
    nil
  end


  def lookup(key)
    @storage.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end
    nil
  end


  def remove(key)
    @storage.each do |pair|
      if pair[0] == key
        @storage.delete(pair)
        return pair
      end
    end
  end

  def show
    @storage.each do |pair|
      p pair
    end
    nil
  end


end
