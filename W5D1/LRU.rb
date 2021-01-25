class LRUCache
    def initialize(nums)
      @cache = Array.new(nums)
      @nums = nums
    end

    def count
      # returns number of elements currently in cache
      cache.count{|ele| ele != nil}
    end

    def add(el)
      # adds element to cache according to LRU principle
      if cache.include?(el)
        cache.delete(el)
        cache.unshift(el)
      elsif
        @cache.pop
        @cache.unshift(el)
      else
        @cache.unshift(el)
    end

    def show
      # shows the items in the cache, with the LRU item first
      print cache.reverse
    end

    private
    # helper methods go here!

  end