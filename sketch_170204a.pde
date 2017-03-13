int x = 0;
int y = 0;
boolean xRichtung = true;
boolean yRichtung = true;
float r = 0;
float g = 0;
float b = 0;

void setup(){
  frameRate(600);
  size(1080,1920);
  background(255,255,255);
}

void draw(){
  
  if(x > 1080){
    xRichtung = false;
    farbe();
  }
  if(x < 0){
    xRichtung = true;
    farbe();
  }
  
  if(y > 1920){
    yRichtung = false;
    farbe();
  }
  if(y < 0){
    yRichtung = true;
    farbe();
  }
  
  if(x < 1080 || x > 0){
    if(xRichtung == true){
      x += 1;
    }else{
      x -= 1;
    }
  }
  
    if(y < 1920 || y > 0){
      if(yRichtung == true){
        y += 3;
      }else{
      y -= 3;
    }
  }


  background(255,255,255);
  fill(r,g,b);
  ellipse(x,y,50,50);
  
}
void farbe(){
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
}