

public class Graph {
  
  Node[] nodes;
  int nodeSize = 30;
  color edgeColor = color(255, 255, 255);
  
  public Graph(int xOffset, int yOffset) {
    
    Node a, b, c, d, e, f, g, h, i, j, k, l;
    
    a = new Node(400 + xOffset, 100 + yOffset, "A", nodeSize);
    
    b = new Node(300 + xOffset, 150 + yOffset, "B", nodeSize);
    c = new Node(400 + xOffset, 150 + yOffset, "C", nodeSize);
    d = new Node(500 + xOffset, 150 + yOffset, "D", nodeSize);
    
    e = new Node(200 + xOffset, 250 + yOffset, "E", nodeSize);
    f = new Node(300 + xOffset, 250 + yOffset, "F", nodeSize);
    
    g = new Node(500 + xOffset, 250 + yOffset, "G", nodeSize);
    h = new Node(550 + xOffset, 300 + yOffset, "H", nodeSize);
    i = new Node(500 + xOffset, 300 + yOffset, "I", nodeSize);
    
    j = new Node(300 + xOffset, 300 + yOffset, "J", nodeSize);
    k = new Node(300 + xOffset, 350 + yOffset, "K", nodeSize);
    
    l = new Node(550 + xOffset, 350 + yOffset, "L", nodeSize);
    
    a.connect(b);
    a.connect(c);
    a.connect(d);

    b.connect(e);
    b.connect(f);
    
    d.connect(g);
    g.connect(h);
    g.connect(i);
    i.connect(h);
    
    f.connect(j);
    j.connect(k);
    
    h.connect(l);
    
    nodes = new Node[] {
      a, b, c, d, e, f, g, h, i, j, k, l
    };
  }
  
  public void doDraw() {
      drawEdges();
      drawNodes();
  }
  
  public void drawEdges() {
    for(Node node : nodes){
      for(Node otherNode : nodes){
        if(node.isConnectedTo(otherNode)){
          stroke(edgeColor);
          line(node.x, node.y, otherNode.x, otherNode.y);
        }
      }
    }
  }

  public void drawNodes(){
    for(Node node : nodes){
      node.doDraw();
    }
  }
  
  Node getForValue(String val) {
    for(Node node : nodes) {
      if(node.value.equals(val)){
        return node; 
      }
    }
    return nodes[0];
  }
  
}
