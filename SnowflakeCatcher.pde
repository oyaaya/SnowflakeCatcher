 void setup(){
  size(600,600);
  background(0);
 }
 Flake[] snow= new Flake [1000];

 class Dot{
   int x,y;
   Dot(int x, int y){
     this.x=x;
     this.y=y;  
   }
   void show(){
     fill(0,0,255);
     ellipse(x,y,15,15);
   }
 }
 int count=0;
 int dotNum=0;
 class Flake{
   int x,y,size;
   Flake(){
     x=(int)(Math.random()*width);
     y=5;
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
