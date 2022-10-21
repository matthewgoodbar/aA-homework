class Stack
    def initialize
        @arr = []
    end

    def push(el)
        @arr.push(el)
    end

    def pop
        @arr.pop
    end
    
    def peek
        @arr[-1]
    end
end

class Queue
    def initialize
        @arr = []
    end

    def enqueue(el)
        @arr.push(el)
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr[0]
    end
end

class Map
    def initialize
        @arr = []
    end

    def set(key, value)
        pair = @arr.select {|pair| pair[0] == key}[0]
        if pair
            pair[1] = value
            return pair
        else
            pair = [key, value]
            @arr.push(pair)
            return pair
        end
    end

    def get(key)
        return @arr.select {|pair| pair[0] == key}[0][1]
    end

    def delete(key)
        @arr.reject! {|pair| pair[0] == key}
    end

    def show
        @arr.each {|pair| p pair}
    end
end