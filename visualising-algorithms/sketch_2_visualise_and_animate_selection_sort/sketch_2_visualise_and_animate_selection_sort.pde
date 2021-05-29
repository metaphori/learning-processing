// data
int N = 100;
int[] a = new int[N];

// constants for graphics
int WIDTH = 1200;
int HEIGHT = 900;
int BAR_HEIGHT_MAX = HEIGHT/2;
int MAX_RANDOM = 200;
int H_OFFSET = 50;
int BAR_WIDTH = (WIDTH - H_OFFSET*2) / N;
int BAR_HEIGHT_OFFSET = HEIGHT/2;
int BAR_HEIGHT_FACTOR = BAR_HEIGHT_MAX / MAX_RANDOM;
int ALPHA = 50;
  
void draw_value(int x, int pos, int direction, int alpha){
    fill(255,255,255);
    stroke(255,255,255);
    rect(
        H_OFFSET + pos * BAR_WIDTH, 
        height - BAR_HEIGHT_OFFSET, 
        BAR_WIDTH, 
        -BAR_HEIGHT_MAX);  
    fill(50, 150+x/2, 50, alpha);
    stroke(50, 150+x/2, 50, alpha);
    rect(H_OFFSET + pos * BAR_WIDTH, height-BAR_HEIGHT_OFFSET, BAR_WIDTH, direction * x * BAR_HEIGHT_FACTOR);  
}

void swap(int[] arr, int i, int j){
   int temp = arr[i];
   arr[i] = arr[j];
   arr[j] = temp;
   draw_value(arr[i], i, -1, ALPHA);
   draw_value(arr[j], j, -1, ALPHA);
}
  
void setup() {
  size(1200, 900);
  background(255,255,255);
   
  for(int i=0; i < N; i++) {
    a[i] = (int)random(0, MAX_RANDOM);
    draw_value(a[i], i, -1, ALPHA);
    print(a[i] + "; ");
  }
}

int i = 0;

void draw(){
  if(i >= N) return;
  int j;
  for(j = i+1; j<N; j++){
    if(a[j] < a[i]){ swap(a, i, j); break; } 
  }
  
  draw_value(a[i], i, -1, 100);
  if(j == N) i++;
}
