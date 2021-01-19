require 'set'

class GraphNode
    attr_accessor :letter, :neighbors

    def initialize(letter)
        @letter = letter
        @neighbors = []

    end

    def add_neighbor(node)

        @neighbors << node
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    already_visited = Set.new()

    until queue.empty?
        node = queue.shift
        unless already_visited.include?(node)
        return node.letter if node.letter == target_value
        already_visited += [node]
        queue += node.neighbors
    end
end
return nil

end





