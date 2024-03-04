import math
def search(start, edges): 
    vertices = max([max(a, b)] for (a,b) in edges.keys())[0] + 1
    start_to_any = [-math.inf] * vertices
    previous = [None] * vertices
    print(start_to_any)
    start_to_any[start] = 0
    for _ in range(vertices):
        for (a,b), weight in edges.items():
            may_be_better = start_to_any[a] + weight
            if may_be_better < start_to_any[b]:
                start_to_any[b] = may_be_better
                previous[b] = a

    for (a, b), weight in edges.items():
        if start_to_any[a] + weight <= start_to_any[b]:
            print(f"{a}<->{b}:{weight} is negative loop")
    return start_to_any, previous
    
edges = {}
edges[(0,1)] = 10

any_to_any, routes = search(0, edges)
print(f"0 to any: {any_to_any}; routes: {routes}")