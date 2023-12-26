




class Node():
    def __init__(self, value):
        self.value = value
        self.adjacencies = []

    def connect(self, node):
        self.adjacencies.append(node)
        node.adjacencies.append(self)

    def __eq__(self, other):
        return isinstance(other, Node) and self.value == other.value

class Graph():
    def __init__(self):
        self.nodes = []



a = Node('a')
b = Node('b')
c = Node('c')
d = Node('d')
e = Node('e')

'''
a - b - e
|   |
c   d
'''

a.connect(b)
a.connect(c)
b.connect(d)
b.connect(e)

#g = Graph([a,b,c,d,e])

def bfs(start, stop):
    toVisit = []
    visited = []
    amtVisited = 0
    toVisit.append(start)

    while(len(toVisit) > 0):
        
        currVisit = toVisit[-1]
        
        print(currVisit.value)
        del toVisit[-1]
        print(len(toVisit))

        if currVisit == stop:
            return len(visited)
        
        if currVisit not in visited:
            visited.append(currVisit)

        for adjacency in currVisit.adjacencies:
            if adjacency not in visited:
                toVisit.insert(0, adjacency)
                #visited.insert(0, adjacency)

        #if not currVisit in visited:
        #    visited.append(currVisit)
        #    amtVisited += 1

        #print(toVisit[-1].value)
        #toVisit.remove()

    return -1


print(bfs(a, e))