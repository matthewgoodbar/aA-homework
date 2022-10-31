class LRUCache

  def initialize(max_size)
    @arr = Array.new
    @max_size = max_size
  end

  def count
    # returns number of elements currently in cache
    return @arr.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @arr.include?(el)
      refresh(el)
    else
      if @arr.length < @max_size
        just_add(el)
      else
        add_and_boot(el)
      end
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @arr
  end

  private
  # helper methods go here!
  def just_add(el)
    @arr << el
  end

  def add_and_boot(el)
    @arr.shift
    @arr << el
  end

  def refresh(el)
    @arr.delete(el)
    @arr << el
  end

end

# johnny_cache = LRUCache.new(4)

# johnny_cache.add("I walk the line")
# johnny_cache.add(5)

# johnny_cache.count # => returns 2

# johnny_cache.add([1,2,3])
# johnny_cache.add(5)
# johnny_cache.add(-5)
# johnny_cache.add({a: 1, b: 2, c: 3})
# johnny_cache.add([1,2,3,4])
# johnny_cache.add("I walk the line")
# johnny_cache.add(:ring_of_fire)
# johnny_cache.add("I walk the line")
# johnny_cache.add({a: 1, b: 2, c: 3})


# johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]