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