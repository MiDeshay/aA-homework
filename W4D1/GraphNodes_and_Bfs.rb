 require 'set'

 class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value, neighbors = [])
        @value = value
        @neighbors = neighbors
    end
 end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    queue = [starting_node]

    visited = Set.new()

    until queue.empty?

        el = queue.shift
        visited.add(el.value)

        return el if el.value == target_value

        el.neighbors.each do |neighbor| 
            queue << neighbor if !visited.include?(el.value)
        end
                
    end
    nil
end
        


p bfs(a, 'f')