class LRUCache
  def initialize(max_size = 5)
    @max_size = max_size
    @store = []

  end

  def count
     # returns number of elements currently in cache
     @store.count
  end

  def add(el)
     # adds element to cache according to LRU principle
    if @store.include?(el)
      @store.delete(el)
      @store << el
    elsif count >= @max_size
      @cache.shift
      @cache << el
    elsif count < max_size
       @store <<(el)
    end

  end

  def show
     # shows the items in the cache, with the LRU item first
     p @cache
     nil
  end


 end
