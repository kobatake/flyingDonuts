
void ground0() {
  blendMode(SCREEN);
  float a = amp.analyze();    
  flying -= 0.03;

  float yoff= flying;

  for (int y = 0; y < rows; y++) {
    float xoff = 0;  
    for (int x = 0; x< cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10-200*a, 10+200*a);
      xoff +=0.05;
    }
    yoff +=0.05;
  } 

  stroke(200);
  strokeWeight(1);
  //noStroke();
  lights();
  noFill();
  fill(100);
  translate(width/2, height*3/4);
  rotateX(PI/3);

  translate(-w/2, -h/2);

  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x< cols; x++) {
      vertex(x*scl, y*scl, (terrain[x][y]));
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}


void ground01() {
    blendMode(SCREEN);
  float a = amp.analyze();    
  flying -= 0.03;
  countTimeGround01++;
  float yoff= flying;

  for (int y = 0; y < rows; y++) {
    float xoff = 0;  
    for (int x = 0; x< cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10-200*a, 10+200*a);
      xoff +=0.05;
    }
    yoff +=0.05;
  } 

  stroke(200);
  strokeWeight(1);
  //noStroke();
  lights();
  noFill();
  fill(100);
  translate(width/2, height*3/4+countTimeGround01*0.5);
  
  if(PI/3+countTimeGround01*0.002<PI/2){
  rotateX(PI/3+countTimeGround01*0.002);
  }else{
    rotateX(PI/2);
  }
  
  translate(-w/2, -h/2);

  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x< cols; x++) {
      vertex(x*scl, y*scl, (terrain[x][y]));
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}




void ground02() {
    blendMode(SCREEN);
  float a = amp.analyze();    
  flying -= 0.03;
  countTimeGround02++;
  float yoff= flying;

  for (int y = 0; y < rows; y++) {
    float xoff = 0;  
    for (int x = 0; x< cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10-200*a, 10+200*a);
      xoff +=0.05;
    }
    yoff +=0.05;
  } 

  stroke(200);
  strokeWeight(1);
  //noStroke();
  lights();
  noFill();
  fill(100);
  translate(width/2, height*9/10 + height/countTimeGround02);
  
  rotateX(PI/3);
  translate(-w/2, -h/2);
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x< cols; x++) {
      vertex(x*scl, y*scl, (terrain[x][y]));
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}


void ground1() {
  float a = amp.analyze();    
  flying += 0.03;

  float yoff= flying;

  for (int y = 0; y < rows; y++) {
    float xoff = 0;  
    for (int x = 0; x< cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10-200*a, 10+200*a);
      //terrain[x][y] = map(noise(xoff, yoff), 0, 1, -10, 10);
      xoff +=0.05;
    }
    yoff +=0.05;
  } 
    blendMode(SCREEN);
  stroke(80, 120, 150);
  strokeWeight(1);
  //noStroke();
  lights();
  noFill();

  translate(width/2, height, -400);
  //rotateX(PI/3);
  rotateX(0.001*time*PI);
  translate(-w/2, -h + h/10000*time);

  for (int y = 0; y < rows-1; y++) {

    beginShape(TRIANGLE_STRIP);
    float xoff = 0;
    for (int x = 0; x< cols; x++) {
      fill(80+a*map(noise(xoff, yoff), 0, 1, 0, 1000), 120+a*map(noise(xoff, yoff), 0, 1, 0, 1000), 150+a*map(noise(xoff, yoff), 0, 1, 0, 1000));
      //noStroke();
      vertex(x*scl, y*scl, (terrain[x][y]));
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
      xoff +=0.05;
    }
    yoff +=0.05;
    endShape();
  }
}
