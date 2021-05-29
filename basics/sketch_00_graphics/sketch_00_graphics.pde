void setup() {
  size(1200, 900);
  
  // rect(0, 0, 500, 500);
  int[] a = new int[100];
  for(int i=0; i<100; i++) {
    a[i] = i;
    float h = random(0,800);
    fill((h/800*255), 0, 0);
    stroke((h/800*255), 0, 0);
    rect(i*20, 800, 20, -h);
  }
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
}
