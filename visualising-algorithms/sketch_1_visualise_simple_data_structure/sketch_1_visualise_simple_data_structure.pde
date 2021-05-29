void setup() {
  size(1200, 900);
  background(255,255,255);
  
  int N = 100;
  int MAX_RANDOM = 200;
  int H_OFFSET = 50;
  int BAR_WIDTH = (width - H_OFFSET*2) / N;
  int BAR_HEIGHT_OFFSET = 20;
  int BAR_HEIGHT_FACTOR = 4;
  
  int[] a = new int[N];
  for(int i=0; i < N; i++) {
    a[i] = (int)random(0, MAX_RANDOM);
    fill(255-a[i], 255-a[i], 255-a[i]);
    stroke(a[i], a[i], a[i]);
    rect(H_OFFSET+i*BAR_WIDTH, height-BAR_HEIGHT_OFFSET, BAR_WIDTH, -a[i]*BAR_HEIGHT_FACTOR);
  }
}
