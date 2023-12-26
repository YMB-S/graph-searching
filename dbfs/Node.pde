import java.util.LinkedList;

public class Node {
  
  public int x;
  public int y;
  int size;
  
  String value;
  
  public LinkedList<Node> adjacencies;
  
  HashMap<NodeState, int[]> colors;
  public NodeState state;
  
  public Node(int x, int y, String value, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.value = value;
    
    adjacencies = new LinkedList<>();
    
    this.colors = new HashMap<>();
    colors.put(NodeState.UNVISITED,   new int[]{0, 0, 0});
    colors.put(NodeState.CURRENT,     new int[]{255, 0, 255});
    colors.put(NodeState.VISITED,     new int[]{180, 180, 180});
    colors.put(NodeState.PATH_TAKEN,  new int[]{0, 150, 0});
    colors.put(NodeState.FOUND,       new int[]{0, 255, 0});
    
    state = NodeState.UNVISITED;
  }
  
  public void connect(Node other){
    this.addAdjacency(other);
    other.addAdjacency(this);
  }
  
  public void addAdjacency(Node other){
    this.adjacencies.add(other);
  }
  
  public boolean isConnectedTo(Node other) {
    return(this.adjacencies.contains(other));
  }
  
  public void doDraw(){
     color c;
     int[] colorValues = colors.get(state);
     c = color(colorValues[0], colorValues[1], colorValues[2]);
     stroke(c);
     fill(c);
     ellipse(x, y, size, size);
     
     fill(255);
     text(value, x, y);
  }
  
  public String toString() {
    return (this.value); 
  }
}

enum NodeState {
    UNVISITED,
    CURRENT,
    VISITED,
    PATH_TAKEN,
    FOUND
}
