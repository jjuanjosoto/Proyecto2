import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A list for all of our rectangles
ArrayList<Box> boxes;

Box2DProcessing box2d;		

void setup() {
  size(800,800);
  smooth();
  // Initialize and create the Box2D world
  box2d = new Box2DProcessing(this);	
  box2d.createWorld();
  
  // Create ArrayLists
  boxes = new ArrayList<Box>();
}

void draw() {
  background(255);
  
  // We must always step through time!
  box2d.step();    

  // When the mouse is clicked, add a new Box object
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
    
  
  ellipse(mouseX,mouseY,20,20);
  

  }

  // Display all the boxes
  for (Box b: boxes) {
    b.display();
  }
}