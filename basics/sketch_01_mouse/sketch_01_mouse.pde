void setup(){
  size(500,500);
  println("Width: " + width + "; height: " + height);
}

void draw() {
    if (mousePressed) {
      stroke(0,0,255);
    } else {
      stroke(255,0,0);
    }
    line(0, 0, mouseX, mouseY);
}

void mousePressed() {
    print("mouse pressed");
}
