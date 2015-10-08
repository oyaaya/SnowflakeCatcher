 
 void setup(){
  size(800,800);
  smooth();
  background(0);
 }
 Flake[] snow= new Flake [800];

 class Dot{
   int x,y;
   Dot(int x, int y){
     this.x=x;
     this.y=y;  
   }
   void show(){
     fill(0,0,255);
     ellipse(x,y,5,5);
   }
 }
 int count=0;
 int dotNum=0;
 class Flake{
   int x,y,size;
   Flake(){
     x=(int)(Math.random()*width);
     y=8;
     size=(int)(Math.random()*6+5);
   }
   void move(){
     if(get(x,y+7)== color(0) && get(x+5,y+7)== color(0) && get(x-5, y+7)== color(0)){
       y++;
     }
   }
   void show(){
     noStroke();
     fill(255);
     ellipse(x,y,size,size);
   }  
 }
void mouseDragged(){
  strokeWeight(10);
  if(mouseButton==RIGHT)
  {
    stroke(0);
  }
  else
  {
    stroke(255,208,0);
  }
  line(mouseX,mouseY,pmouseX,pmouseY);
  noStroke();
}
 void draw(){
   background(0);
   if(count==snow.length-1){
     count=0;
   }
   snow[count]=new Flake();
   count++;
   for(int i=0; i<snow.length; i++){
     if(snow[i]!=null){
        snow[i].show();
     }
   } 
   for(int i=0; i<snow.length; i++){
     if(snow[i]!=null){
        snow[i].move();
     }
   }
}

