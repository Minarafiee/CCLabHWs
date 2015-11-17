int Length = 500;//1000                        

float[] X = new float[Length];          
float[] Y = new float[Length];          
float[] Spx = new float[Length];       
float[] Spy = new float[Length];        
float[] SpeedRate = new float[Length];   

void setup() {
  size(500, 500);
  colorMode(HSB, 100);
  background(0);
  frameRate(40);//30
  smooth();
  noCursor();

  for(int i=0 ; i < Length ; i++) {
    X[i] = random(width);
    Y[i] = random(height);
    Spx[i] = Spy[i] = 0;
    SpeedRate[i] = random(0.001, 0.01);
  }
}

void draw() {
 // background(0);
//saveFrame("output/frames####.png");
  for(int i=0 ; i < Length ; i++) {
    Spx[i] = (mouseX - X[i]) * SpeedRate[i];
    Spy[i] = (mouseY - Y[i]) * SpeedRate[i];
    X[i] += Spx[i];
    Y[i] += Spy[i];
  
    drawBug(i);
  }
}

void drawBug(int i) {
  pushMatrix();  

  translate(X[i], Y[i]);
  rotate(atan2(mouseY - Y[i], mouseX - X[i]));
  
  ellipseMode(CENTER);
  ellipse(0,0,random(1),random(1));
  fill(98);
  noStroke();
  smooth();

  popMatrix(); 
}