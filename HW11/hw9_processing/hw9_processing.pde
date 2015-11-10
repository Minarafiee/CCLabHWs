float r=180;
float theta=0;
void setup() {
  size(500,500);
  background(0); //the reason it i sfading is that the background move over the circle
  smooth();

}
void draw(){
  fill(0,10);// look into definition of fill
  rect(0,0,width,height);
  float x= theta %width;
  float y = r*sin(theta* 0.01);

fill(0,255,255); //<>//
noStroke();
ellipse(x,y+height/2,20,20);

theta++;
}