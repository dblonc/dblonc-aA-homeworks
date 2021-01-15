  class Stack
    def initialize
      @stack = []
      
    end

    def push(el)
      @stack += [el]
    end

    def pop
      @stack -= [@stack.last]
    end

    def peek
      @stack.first
    end
  end


  class Queue
    def initialize
      @stack = []
    end

    def enqueue(el)
      @stack = [el] + @stack
    end

    def dequeue
      @stack -= [@stack.last]
    end

    def peek
      @stack.first
    end
  end

  class Map
    def initialize
      @stack = []
    end

    def [](position)
        @stack[position]

    end
    
    def []=(position, value)
        @stack[position] = value
    end

    def set(key, value)
        if @stack.include?(key)
            @stack[key + 1] = value
        else
            @stack += [[key, value]]
        end
    end

    def delete(key)
        @stack.each_with_index do |arr,idx|
            if arr[0] == key
                @stack -= [[arr[idx],arr[idx + 1]]]
            end
        end
    end

    def show
      @stack
    end
  end