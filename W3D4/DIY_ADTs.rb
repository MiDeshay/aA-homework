class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.first
    end
end

# my_stack = Stack.new

# p my_stack.push(4)
# p my_stack.push('el')
# p my_stack.push({"one": [2,3]})
# p my_stack.push(Stack.new)

# my_stack.pop

# p my_stack.push(2)
# p my_stack.peek

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue.first
    end

end

# my_Queue = Queue.new


# p my_Queue.enqueue("love is")
# p my_Queue.enqueue("for the")
# p my_Queue.enqueue("fragile")
# my_Queue.dequeue
# p my_Queue.enqueue("Brave")


class Map

    def initialize
        @map = []
    end

    def set(key,value)
        if !@map.include?(key)
            @map << [key, value]
        else
            i = @map.index([key, value])
            @map[i][1] = value 
        end
    end

    def get(key)
        @map.each do |arr|
            if key == arr[0]
                return arr[1]
            end
        end
        nil

    end

    def delete(key)
        @map.delete_if{|arr| arr[0] == key}
    end

    def show
        p @map
    end


end

my_map = Map.new

my_map.set(1, 'a')
my_map.set(2, 'b')
my_map.set(3, 'c')
my_map.set(4, 'k')

p my_map.get(2)

my_map.show

my_map.delete(3)

my_map.show

my_map.set(4, 'd')

my_map.show