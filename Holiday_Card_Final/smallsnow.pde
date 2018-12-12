public class smallsnow implements Snow{
  int X,Y;
  float move;
  double speed;
  
  public smallsnow(double s)
  {
    
    X=(int)(Math.random()*width);
    Y=(int)(Math.random()*height);
    speed=s;
    float move=(float)(Math.random()*5)-1;
  }
  
  
  
  void move(){
    Y+=speed;
    X+=move;
    if(Y>height){
    Y=0;
    
    X=(int)(Math.random()*width);
    }
  }
  
  void show(){
    fill(255);
    ellipse(X,Y,5,5);
  }
  
  
}