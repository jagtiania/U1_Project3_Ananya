int circleX[];
int circleY[];
int numCircles = 10000;

void setup()
{
  fullScreen();
  circleX = new int[numCircles];
  circleY = new int[numCircles];
 
  for(int i=0; i< numCircles; i++)
  {
    circleX[i] = (int)random(10,width);
    circleY[i] = (int)random(10,height);
  }
}
 
void draw()
{
  background(1000); 
  random(100,200);
 
  for(int i=0; i< numCircles; i++)
  {
     //Get a dir
     int dir = (int)random(-1,2); //1, 0, 01
     //Draw
     ellipse(circleX[i], circleY[i], 20, 20);
     //Move
     circleX[i] = circleX[i] + (dir * 1);
  }
}