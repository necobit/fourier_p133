float a[] = {8, 3, 2, 1, 0, 0};
float b[] = {0, 2, 4, 3, 0, 0};
int yCent;

void setup() {
  size(360, 400);
  frameRate(36);
  background(0);
  stroke(255);
  strokeWeight(2);
  fill(0);
  yCent = height / 2;
  line(0, yCent, width, yCent);
  for(int i = 0 ;i < 6;i++){
  print("a[");
  print(i);
  print("] = ");
  println(a[i]);
  }

  for(int i = 0 ;i < 6;i++){
  print("b[");
  print(i);
  print("] = ");
  println(b[i]);
  }

}

int t;
int c = 8;

void draw() {
  float p;
  p = (
    a[0]
    + (a[1] * cos(radians(t * 1)))
    + (a[2] * cos(radians(t * 2)))
    + (a[3] * cos(radians(t * 3)))
    + (a[4] * cos(radians(t * 4)))
    + (a[5] * cos(radians(t * 5)))

    + (b[1] * sin(radians(t * 1)))
    + (b[2] * sin(radians(t * 2)))
    + (b[3] * sin(radians(t * 3)))
    + (b[4] * sin(radians(t * 4)))
    + (b[5] * sin(radians(t * 5)))
    );
    
  ellipse(t, yCent + p * - c, 2, 2);
  t ++;
  if (t >= width) {
    t = 0;
    background(0);
    line(0, yCent, width, yCent);
  }
}
