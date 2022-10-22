class GraphNode
    attr_accessor :data, :neighbors

    def initialize(data=nil)
        @data = data
        @neighbors = []
    end

    def add_neighbor(node)
        return if node.nil?
        @neighbors.push(node) unless @neighbors.include?(node)
    end

    def bfs(target)
        queue = [self]
        visited = []
        until queue.empty?
            current_node = queue.shift
            visited << current_node
            return current_node if current_node.data == target
            current_node.neighbors.each do |neighbor|
                queue.push(neighbor) unless visited.include?(neighbor)
            end
        end
        return nil
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

p a.bfs('b')
p a.bfs('f')
p e.bfs('d')