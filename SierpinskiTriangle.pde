int L;
public void setup()
{
  size(500,500);
  background(0);
}

public void draw()
{
  sierpinski(0,500,L);
}
public void mouseDragged()//optional
{
 if(mouseX>0||mouseY>0){
   L = L + 2;
 }
}
public void keyPressed(){
  if(key == 'a'){
    background(0); 
  }
  if(key == 's'){
    resetTriangle(); 
  }
}
public void sierpinski(int x, int y, int len)
{
  if(len<=20){
    fill((int)(Math.random()*255+150),(int)((float)(500-y)/500*255),0);
    triangle(x,y, x+len, y, x+len/2,y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
public void resetTriangle(){
   L = 0;
   background(0);
}
