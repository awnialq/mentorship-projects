# Make sure to finish this

from collections import defaultdict, deque

class Graph:
            
    def __init__(self):
        self.graph_dict = defaultdict(list)
    
    def addEdge(self, vertex, connected_to):
        self.graph_dict[vertex].append(connected_to)
        self.graph_dict[connected_to].append(vertex)

    def visualize_adjacency(self):
        print("Graph (Adjacency List):")
        for vertex in sorted(self.graph_dict.keys()):
            neighbors = sorted(self.graph_dict[vertex])
            print(f"\t{vertex} -> {neighbors}")

    def visualize_edges(self):
        print("Graph (Edge List):")
        seen = set()
        for vertex in self.graph_dict:
            for neighbor in self.graph_dict[vertex]:
                edge = tuple(sorted((vertex, neighbor)))
                if edge not in seen:
                    seen.add(edge)
                    print(f"\t{edge[0]} -- {edge[1]}")

    def to_mermaid(self):
        lines = ["graph TD"]
        seen = set()
        for vertex in sorted(self.graph_dict.keys()):
            for neighbor in sorted(self.graph_dict[vertex]):
                edge = tuple(sorted((vertex, neighbor)))
                if edge not in seen:
                    seen.add(edge)
                    lines.append(f"    {edge[0]} --- {edge[1]}")
        return "\n".join(lines)
        
    def dfs_recursive(self, vertex):
        print("DFS Recursive: ")
        visited = set()
        self.dfs_helper(vertex, visited)
    
    def dfs_helper(self, vertex, visited):
        visited.add(vertex)
        print(f"\tAt: {vertex}")
        print(f"\tVisited: {visited}")
        for v in self.graph_dict[vertex]:
            if(v not in visited):
                self.dfs_helper(v, visited)
        
    def dfs_iterative(self, vertex):  # fix later - by next week
        visited = set()
        toVisit = [vertex]
        print("DFS iterative: ")
        while len(toVisit) != 0:
            current = toVisit.pop()

            if current in visited:
                continue

            visited.add(current)
            print(f"\tAt: {current}")

            for neighbor in reversed(self.graph_dict[current]):
                if neighbor not in visited:
                    toVisit.append(neighbor)
            print(f"\tTo visit: {visited}")
            print(f"\tVisited: {visited}")

        return visited
    
    def bfs(self, vertex):
        print("BFS: ")
        if vertex is None:
            return set()

        visited = set()
        queue = deque()
        queue.append(vertex)
        visited.add(vertex)

        while len(queue) != 0:
            vtx = queue.popleft()
            print(f"\tAt: {vtx}")
            print(f"\tTo visit: {list(queue)}")
            print(f"\tVisited: {visited}")

            for v in self.graph_dict[vtx]:
                if v not in visited:
                    queue.append(v)
                    visited.add(v)

        return visited
                    
if __name__ == "__main__":
    g = Graph()

    # This shape makes DFS and BFS orders clearly different from A.
    g.addEdge('A', 'B')
    g.addEdge('A', 'C')
    g.addEdge('B', 'D')
    g.addEdge('B', 'E')
    g.addEdge('C', 'F')
    g.addEdge('C', 'G')

    g.visualize_adjacency()
    g.visualize_edges()
    print("Mermaid Diagram:")
    print(g.to_mermaid())
    
    g.dfs_recursive('A')
    g.dfs_iterative('A')
    g.bfs('A')