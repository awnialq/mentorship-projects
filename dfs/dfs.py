# Make sure to finish this

from collections import defaultdict

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
            print(f"{vertex} -> {neighbors}")

    def visualize_edges(self):
        print("Graph (Edge List):")
        seen = set()
        for vertex in self.graph_dict:
            for neighbor in self.graph_dict[vertex]:
                edge = tuple(sorted((vertex, neighbor)))
                if edge not in seen:
                    seen.add(edge)
                    print(f"{edge[0]} -- {edge[1]}")

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
        print(f"DFS Overview: ")
        toVisit = []
        visited = {}
        self.dfs_helper(vertex, toVisit, visited)
        
        
    def dfs_helper(self, vertex, toVisit, visited):
        print(f"At: {vertex}")
        visited[vertex] = True
        for e in self.graph_dict[vertex]:
            if(visited.get(e, False) is False and e not in toVisit):
                toVisit.append(e)
        
        print(f"To visit: {toVisit}")
        print(f"Visited: {visited}")
        
        if(len(toVisit) == 0):
            return
    
        # do whatever
        
        self.dfs_helper(toVisit.pop(), toVisit, visited)
        
if __name__ == "__main__":
    g = Graph()
    
    g.addEdge('A', 'B')
    g.addEdge('A', 'C')
    g.addEdge('A', 'D')
    g.addEdge('C', 'B')
    g.addEdge('C', 'D')

    g.visualize_adjacency()
    g.visualize_edges()
    print("Mermaid Diagram:")
    print(g.to_mermaid())
    
    g.dfs_recursive('A')