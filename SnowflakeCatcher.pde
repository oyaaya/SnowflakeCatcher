Snowflake[] snow = new Snowflake[800];
int flakenum = 0;
Boolean spawn = true;

void setup()
{
  size(500,500);
  noStroke();
  fill(0);
  rect(-100, -100, 1000, 1000);
  frameRate(100);
}
void draw(){
  int time = second();
  if(flakenum >= snow.length - 1){
    flakenum = 0;
  }
  if(snow[flakenum] != null){
    fill(0);
    ellipse(snow[flakenum].x, snow[flakenum].y-1.5, snow[flakenum].flakeSize+snow[flakenum].flakeSize/3, snow[flakenum].flakeSize+snow[flakenum].flakeSize/2);
    
  }
  snow[flakenum] = new SnowFlake();
  flakenum++;
  spawn = false;
  
  for(int i = 0; i<snow.length; i++){
    if(snow[i] != null){
      fill(0,0,0);
      ellipse(snow[i].x, snow[i].y-1.5, snow[i].flakeSize+snow[i].flakeSize/3, snow[i].flakeSize+snow[i].flakeSize/2);

                fill(255,255,255);
      ellipse(snow[i].x, snow[i].y, snow[i].flakeSize, snow[i].flakeSize);
      snow[i].move();
    }
}

class Snowflake
{
  int x;  int y; int speed; int flakeSize; int move; int bgcolor;

  Snowflake()
  {
    x = (int) (Math.random()*(width-10) +7);
    y = 2;
    speed = (int)(Math.random()*6+1);
    flakeSize = (int) (Math.random()*5+5);
  }
    void move(){
     if(get(x,y+7)== color(0) && get(x+5,y+7)== color(0) && get(x-5, y+7)== color(0)){
       y++;
     }
   }
  void show(){
     noStroke();
     fill(255);
     ellipse(snow[flakenum].x, snow[flakenum].y-1.5, snow[flakenum].flakeSize+snow[flakenum].flakeSize/3, snow[flakenum].flakeSize+snow[flakenum].flakeSize/2);
    
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
    //your code here
  }
  
}
