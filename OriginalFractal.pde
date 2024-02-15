int value=0;
public void setup()
{
 size(800,800);
 background(100);
}
public void draw()
{
  background(100);
   fill(255);
 translate(400,400);
  myFractal(0,0,1000);
}
public void mousePressed(){
value=0;
}
//public void mouseDragged(){
  //background(0);
 // value=value+1;
 // if(value>500)
//  value=0;
//}
public void myFractal(float x, float y, float size) 
{
  
if(size<1){
  return;
}
else{

rotate(PI/2);
fill(255);
ellipse(x,y,size,size/2);
fill((int)(Math.random()*256),(int)(Math.random()*256),((int)Math.random()*256));
ellipse(x,y,size/4,size/4);
fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

rect(x-size/2,y-size/2,size,size);

myFractal(x,y,size/3);
myFractal(x-size/3,y,size/3);
myFractal(x+size/3,y,size/3);

}
}
