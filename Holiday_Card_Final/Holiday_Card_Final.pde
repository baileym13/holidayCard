Snow [] snows;
PImage house;
PImage tree;
Moon moon= new Moon();


void setup() {
  size(600, 600);
  background(#1E1F5D);
  snows=new Snow[1000];
  for (int i=0; i<snows.length/2; i++) {
    snows[i]= new bigsnow(3);
  }
  for (int i=snows.length/2; i<snows.length; i++) {
    snows[i]= new smallsnow(3);
  }
  house= loadImage("house.png");
    tree= loadImage("tree.png");
   
}

void draw() {
  background(#1E1F5D);
   moon.drawMoon();
   fill(255);
  rect(0,550,600,50);
  image(house,150,250);
   tree.resize(130,200);
  image(tree,30,350);
  for (int i=0; i<snows.length; i++) {


    snows[i].move();
    snows[i].show();
    if (keyPressed) {
      if (key=='1') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(3);
        }
 
      }
      if (key=='2') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(5);
        }
      }
      if (key=='3') {
        for (int j=0; j<snows.length; j++) {
          snows[j]= new bigsnow(7);
        }
       
      }
    }
  }
}